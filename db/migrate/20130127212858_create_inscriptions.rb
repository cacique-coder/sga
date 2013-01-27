class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.references :student
      t.references :representative
      t.references :school_period
      t.references :level
      t.boolean :scholarship

      t.timestamps
    end
    add_index :inscriptions, :student_id
    add_index :inscriptions, :representative_id
    add_index :inscriptions, :school_period_id
    add_index :inscriptions, :level_id
  end
end
