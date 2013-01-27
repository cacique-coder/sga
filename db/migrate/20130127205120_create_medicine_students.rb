class CreateMedicineStudents < ActiveRecord::Migration
  def change
    create_table :medicine_students do |t|
      t.string :description
      t.references :medicine
      t.references :student

      t.timestamps
    end
    add_index :medicine_students, :medicine_id
    add_index :medicine_students, :student_id
  end
end
