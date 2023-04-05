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

ActiveRecord::Schema[7.0].define(version: 2023_04_05_223901) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "passengers", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "contact_number"
    t.string "email"
    t.integer "number_of_seat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_passengers_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "description"
    t.date "service_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shuttles", force: :cascade do |t|
    t.string "description"
    t.time "setoff_time"
    t.integer "max_capacity"
    t.bigint "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_shuttles_on_service_id"
  end

  add_foreign_key "passengers", "services"
  add_foreign_key "shuttles", "services"
end
