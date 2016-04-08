class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.integer :imperial
      t.integer :metric
      t.timestamps null: false
    end
  end
end
