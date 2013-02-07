class Inscription < ActiveRecord::Base
  belongs_to :student
  belongs_to :representative
  belongs_to :school_period
  belongs_to :level
  attr_accessible :scholarship

  def self.students_not_inscribed
    school_period = SchoolPeriod.last
    Student.not_inscribed(school_period)
  end
end