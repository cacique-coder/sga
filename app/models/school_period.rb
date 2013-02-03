class SchoolPeriod < ActiveRecord::Base
  attr_accessible :school_year

  def to_s
    school_year
  end
end
