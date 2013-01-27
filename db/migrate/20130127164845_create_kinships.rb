class CreateKinships < ActiveRecord::Migration
  def change
    create_table :kinships do |t|
      t.string :kinship

      t.timestamps
    end
  end
end
