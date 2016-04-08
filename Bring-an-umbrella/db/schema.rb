# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160408171720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forecasts", force: :cascade do |t|
    t.string  "zip_code"
    t.integer "day"
  end

  create_table "hourly_forecasts", force: :cascade do |t|
    t.integer  "hour"
    t.integer  "humidity"
    t.integer  "pop"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "message"
    t.integer  "forecast_id"
  end

  add_index "hourly_forecasts", ["forecast_id"], name: "index_hourly_forecasts_on_forecast_id", using: :btree

  create_table "temperatures", force: :cascade do |t|
    t.integer  "imperial"
    t.integer  "metric"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "hourly_forecast_id"
  end

  add_index "temperatures", ["hourly_forecast_id"], name: "index_temperatures_on_hourly_forecast_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string  "email"
    t.string  "zip_code"
    t.integer "hours",    default: [], array: true
  end

  add_foreign_key "hourly_forecasts", "forecasts"
  add_foreign_key "temperatures", "hourly_forecasts"
end
