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

ActiveRecord::Schema.define(version: 20170216181032) do

  create_table "meals", force: :cascade do |t|
    t.string   "meal_time"
    t.string   "food_name"
    t.integer  "serving_size"
    t.integer  "num_servings"
    t.integer  "calories"
    t.integer  "fat"
    t.integer  "saturated_fat"
    t.integer  "polunsaturated_fat"
    t.integer  "monounsaturated_fat"
    t.integer  "trans_fat"
    t.integer  "cholesterol"
    t.integer  "sodium"
    t.integer  "potassium"
    t.integer  "carbs"
    t.integer  "fiber"
    t.integer  "sugars"
    t.integer  "protein"
    t.integer  "vitamin_a"
    t.integer  "vitamin_c"
    t.integer  "calcium"
    t.integer  "iron"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "weight"
    t.integer  "height_in_inches"
    t.string   "gender"
    t.integer  "age"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.text     "content"
    t.integer  "calories_burned"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end