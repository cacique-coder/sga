class AddFullNameToRepresentatives < ActiveRecord::Migration
  def change
    add_column :representatives, :last_name, :string
    add_column :representatives, :first_name, :string
  end
end
