class Inscription < ActiveRecord::Base
  belongs_to :student
  belongs_to :representative
  belongs_to :school_period
  belongs_to :level
  attr_accessible :scholarship
end
