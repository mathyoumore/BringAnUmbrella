class CreateHourlyForecasts < ActiveRecord::Migration
  def change
    create_table :hourly_forecasts do |t|
      t.integer :hour
      t.integer :humidity
      t.integer :pop
      t.timestamps null: false
    end
  end
end

#       "temp": {
#         "english": "45",
#         "metric": "7"
#       },
#       "dewpoint": {
#         "english": "42",
#         "metric": "6"
#       },
#       "condition": "Rain",
#       "icon": "rain",
#       "icon_url": "http://icons.wxug.com/i/c/k/rain.gif",
#       "fctcode": "13",
#       "sky": "100",
#       "wspd": {
#         "english": "12",
#         "metric": "19"
#       },
#       "wdir": {
#         "dir": "WSW",
#         "degrees": "243"
#       },
#       "wx": "Rain",
#       "uvi": "0",
#       "humidity": "90",
#       "windchill": {
#         "english": "39",
#         "metric": "4"
#       },
#       "heatindex": {
#         "english": "-9999",
#         "metric": "-9999"
#       },
#       "feelslike": {
#         "english": "39",
#         "metric": "4"
#       },
#       "qpf": {
#         "english": "0.09",
#         "metric": "2"
#       },
#       "snow": {
#         "english": "0.0",
#         "metric": "0"
#       },
#       "pop": "98",
#       "mslp": {
#         "english": "29.54",
#         "metric": "1000"
#       }
#     },
