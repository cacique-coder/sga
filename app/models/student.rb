class Student < ActiveRecord::Base
  attr_accessible :birthdate, :birthplace, :direction, :dni, :first_name, :last_name, :phone_number, :school_dni, :sex

  has_many :medicine_students
  has_many :medicines, :through => :medicine_students

  has_many :representative_students
  has_many :representatives, :through => :representative_students

  has_many :inscriptions
  
end
