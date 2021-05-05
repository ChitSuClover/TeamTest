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

ActiveRecord::Schema.define(version: 2021_05_05_133610) do

  create_table "houses", force: :cascade do |t|
    t.string "house_name"
    t.string "fee"
    t.string "address"
    t.string "built_year"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "line_name"
    t.string "station_name"
    t.string "walking_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "line_name2"
    t.string "station_name2"
    t.string "walking_time2"
    t.string "line_name3"
    t.string "station_name3"
    t.string "walking_time3"
  end

end
