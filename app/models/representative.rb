class Representative < ActiveRecord::Base
  attr_accessible :dni, :mobile_number, :observation, :phone_number,:last_name,:first_name

  has_many :representative_students
  has_many :students, :through => :representative_students


  def to_s
    "#{first_name} #{last_name}"
  end
end
