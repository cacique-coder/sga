class Kinship < ActiveRecord::Base
  attr_accessible :kinship
  has_many  :representative_student 


  def to_s
    kinship
  end
end
