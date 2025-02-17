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

ActiveRecord::Schema.define(version: 2022_03_07_235632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
  end

  create_table "grocery_lists", force: :cascade do |t|
    t.string "title"
    t.bigint "item_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_grocery_lists_on_category_id"
    t.index ["item_id"], name: "index_grocery_lists_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.integer "quantity"
  end

end
