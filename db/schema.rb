# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_03_182313) do

  create_table "clothing_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.string "hex_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "palettes", force: :cascade do |t|
    t.integer "clothing_item_id", null: false
    t.integer "color_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clothing_item_id"], name: "index_palettes_on_clothing_item_id"
    t.index ["color_id"], name: "index_palettes_on_color_id"
  end

  create_table "rates", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rate_id", null: false
    t.integer "clothing_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clothing_item_id"], name: "index_ratings_on_clothing_item_id"
    t.index ["rate_id"], name: "index_ratings_on_rate_id"
  end

  create_table "size_charts", force: :cascade do |t|
    t.integer "clothing_item_id", null: false
    t.integer "size_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clothing_item_id"], name: "index_size_charts_on_clothing_item_id"
    t.index ["size_id"], name: "index_size_charts_on_size_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.integer "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "palettes", "clothing_items"
  add_foreign_key "palettes", "colors"
  add_foreign_key "ratings", "clothing_items"
  add_foreign_key "ratings", "rates"
  add_foreign_key "size_charts", "clothing_items"
  add_foreign_key "size_charts", "sizes"
end
