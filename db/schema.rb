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

ActiveRecord::Schema.define(version: 20160603032211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.text     "amount"
    t.text     "unit"
    t.text     "name"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingredients", ["recipe_id"], name: "index_ingredients_on_recipe_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.text     "fname"
    t.text     "mname"
    t.text     "lname"
    t.text     "email"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "people", ["user_id"], name: "index_people_on_user_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.text     "name"
    t.text     "prep"
    t.text     "cook"
    t.text     "description"
    t.text     "instructions"
    t.integer  "person_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "recipes", ["person_id"], name: "index_recipes_on_person_id", using: :btree

  create_table "stuffs", force: :cascade do |t|
    t.text     "comment"
    t.float    "rating"
    t.boolean  "used"
    t.boolean  "favorite"
    t.text     "story"
    t.integer  "person_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stuffs", ["person_id"], name: "index_stuffs_on_person_id", using: :btree
  add_index "stuffs", ["recipe_id"], name: "index_stuffs_on_recipe_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.text     "login"
    t.text     "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ingredients", "recipes"
  add_foreign_key "people", "users"
  add_foreign_key "recipes", "people"
  add_foreign_key "stuffs", "people"
  add_foreign_key "stuffs", "recipes"
end
