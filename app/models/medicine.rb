class Medicine < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :medicine_student
  has_many :student, :through => :student

end
