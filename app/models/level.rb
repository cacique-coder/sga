class Level < ActiveRecord::Base
  attr_accessible :level
  has_many :inscriptions
end
