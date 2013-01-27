class CreateRepresentativeStudents < ActiveRecord::Migration
  def change
    create_table :representative_students do |t|
      t.boolean :seek
      t.references :kinship
      t.references :representative
      t.references :student

      t.timestamps
    end
    add_index :representative_students, :kinship_id
    add_index :representative_students, :representative_id
    add_index :representative_students, :student_id
  end
end
