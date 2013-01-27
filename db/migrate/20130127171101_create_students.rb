class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :dni
      t.string :school_dni
      t.boolean :sex
      t.text :birthplace
      t.text :direction
      t.string :phone_number
      t.date :birthdate

      t.timestamps
    end
  end
end
