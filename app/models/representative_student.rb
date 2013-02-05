class RepresentativeStudent < ActiveRecord::Base
  belongs_to :kinship
  belongs_to :representative
  belongs_to :student

  attr_accessible :seek, :representative_id, :kinship_id

  def name
    representative
  end

  def seek_to_spanish
    return "Si" if seek
    "No"
  end
end
