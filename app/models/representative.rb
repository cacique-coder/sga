class Representative < ActiveRecord::Base
  attr_accessible :dni, :mobile_number, :observation, :phone_number

  has_many :representative_students
  has_many :students, :through => :representative_students
end
