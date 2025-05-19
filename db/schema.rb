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

ActiveRecord::Schema[8.0].define(version: 2025_05_19_045044) do
  create_table "buildings", force: :cascade do |t|
    t.decimal "total_residential_area"
    t.decimal "total_usable_area"
    t.decimal "plot_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "street"
    t.string "house_number"
    t.string "zip_code"
    t.string "city"
    t.string "state"
    t.string "country"
  end

  create_table "housing_units", force: :cascade do |t|
    t.decimal "residential_area"
    t.decimal "usable_area"
    t.decimal "total_area_share"
    t.integer "building_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["building_id"], name: "index_housing_units_on_building_id"
  end

  add_foreign_key "housing_units", "buildings"
end
