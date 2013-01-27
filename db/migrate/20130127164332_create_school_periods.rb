class CreateSchoolPeriods < ActiveRecord::Migration
  def change
    create_table :school_periods do |t|
      t.string :school_year

      t.timestamps
    end
  end
end
