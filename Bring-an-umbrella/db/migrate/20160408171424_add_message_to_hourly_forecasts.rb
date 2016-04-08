class AddMessageToHourlyForecasts < ActiveRecord::Migration
  def change
    add_column :hourly_forecasts, :message, :string
  end
end
