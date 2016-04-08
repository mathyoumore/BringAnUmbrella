class AddHourlyForecastToTemperature < ActiveRecord::Migration
  def change
    add_reference :temperatures, :hourly_forecast, index: true, foreign_key: true
  end
end
