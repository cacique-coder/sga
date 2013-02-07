class Student < ActiveRecord::Base
  attr_accessible :birthdate, :birthplace, :direction, :dni, :first_name, :last_name, :phone_number, :school_dni, :sex, :photo

  has_many :medicine_students
  has_many :medicines, :through => :medicine_students

  has_many :representative_students
  has_many :representatives, :through => :representative_students

  has_many :inscriptions

  has_attached_file :photo,
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
    :dropbox_options => {
      :path => proc {|style| "#{full_name}_#{id}_#{style}.photo"}
    }

  scope :not_inscribed, lambda {|school_period| joins("LEFT OUTER JOIN inscriptions on students.id = inscriptions.student_id").where("inscriptions.school_period_id is null or inscriptions.school_period_id <> #{school_period}")}

  def self.sex_aviable
    [:Masculino,:Femenino]
  end

  def full_name
    "#{last_name} #{first_name}"
  end

  def to_s
    full_name
  end

end
