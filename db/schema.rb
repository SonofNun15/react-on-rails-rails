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

ActiveRecord::Schema.define(version: 20161010164716) do

  create_table "fuelings", force: :cascade do |t|
    t.decimal  "gas"
    t.decimal  "miles"
    t.decimal  "cost"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "vehicle_id"
    t.date     "date"
  end

  create_table "maintenance", force: :cascade do |t|
    t.date     "date"
    t.string   "description"
    t.string   "mechanic"
    t.decimal  "cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "base_mileage"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "year"
    t.string   "color"
  end

end
