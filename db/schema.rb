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

ActiveRecord::Schema.define(version: 20131020185353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.integer  "category_id"
    t.text     "title"
    t.datetime "start"
    t.datetime "end"
    t.boolean  "allDay"
    t.text     "url"
    t.text     "display_location"
    t.text     "description"
    t.text     "className"
    t.decimal  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pug_events", force: true do |t|
    t.text     "foreign_id"
    t.date     "date"
    t.time     "time"
    t.text     "title"
    t.text     "location"
    t.text     "location_city"
    t.text     "location_state"
    t.text     "location_zip"
    t.text     "location_coordinates"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
