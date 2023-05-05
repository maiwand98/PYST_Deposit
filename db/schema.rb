# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_05_101940) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "time_availability_id", null: false
    t.bigint "bottle_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bottle_id"], name: "index_bookings_on_bottle_id"
    t.index ["time_availability_id"], name: "index_bookings_on_time_availability_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "bottles", force: :cascade do |t|
    t.text "offer_description"
    t.string "bottle_type"
    t.integer "quantity"
    t.bigint "user_id", null: false
    t.bigint "time_availability_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["time_availability_id"], name: "index_bottles_on_time_availability_id"
    t.index ["user_id"], name: "index_bottles_on_user_id"
  end

  create_table "time_availabilities", force: :cascade do |t|
    t.date "start"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "bottle"
    t.string "first_name"
    t.string "last_name"
    t.string "zipcode"
    t.string "img_url"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "bottles"
  add_foreign_key "bookings", "time_availabilities"
  add_foreign_key "bookings", "users"
  add_foreign_key "bottles", "time_availabilities"
  add_foreign_key "bottles", "users"
end
