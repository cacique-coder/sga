class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :dni
      t.string :phone_number
      t.string :mobile_number
      t.text :observation

      t.timestamps
    end
  end
end
