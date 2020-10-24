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

ActiveRecord::Schema.define(version: 2020_10_24_020939) do

  create_table "items", force: :cascade do |t|
    t.integer "menu_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_items_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "restaurant"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "reviewer_id", null: false
    t.integer "menu_id", null: false
    t.integer "gold_star_id", null: false
    t.integer "silver_star_id", null: false
    t.integer "bronze_star_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bronze_star_id"], name: "index_rankings_on_bronze_star_id"
    t.index ["gold_star_id"], name: "index_rankings_on_gold_star_id"
    t.index ["menu_id"], name: "index_rankings_on_menu_id"
    t.index ["reviewer_id"], name: "index_rankings_on_reviewer_id"
    t.index ["silver_star_id"], name: "index_rankings_on_silver_star_id"
  end

  create_table "reviewers", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "items", "menus"
  add_foreign_key "rankings", "items", column: "bronze_star_id"
  add_foreign_key "rankings", "items", column: "gold_star_id"
  add_foreign_key "rankings", "items", column: "silver_star_id"
  add_foreign_key "rankings", "menus"
  add_foreign_key "rankings", "reviewers"
end
