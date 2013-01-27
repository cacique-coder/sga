class RepresentativeStudent < ActiveRecord::Base
  belongs_to :kinship
  belongs_to :representative
  belongs_to :student

  attr_accessible :seek
end
