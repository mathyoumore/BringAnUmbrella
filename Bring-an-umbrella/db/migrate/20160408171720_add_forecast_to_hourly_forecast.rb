class AddForecastToHourlyForecast < ActiveRecord::Migration
  def change
    add_reference :hourly_forecasts, :forecast, index: true, foreign_key: true
  end
end
