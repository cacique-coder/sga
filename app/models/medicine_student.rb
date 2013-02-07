class MedicineStudent < ActiveRecord::Base
  belongs_to :medicine
  belongs_to :student
  attr_accessible :description, :medicine_id

  def name
    medicine.name
  end
end
