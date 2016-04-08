class CreateForecast < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.string :zip_code
      t.integer :day
    end
  end
end
