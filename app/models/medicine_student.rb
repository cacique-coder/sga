class MedicineStudent < ActiveRecord::Base
  belongs_to :medicine
  belongs_to :student
  attr_accessible :description
end
