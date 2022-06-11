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

ActiveRecord::Schema[7.0].define(version: 2022_06_11_144726) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.integer "month"
    t.integer "day"
    t.string "youbi"
    t.string "plan"
    t.string "tomi"
    t.string "yama"
    t.string "oga"
    t.string "sige"
    t.string "kuro"
    t.string "jyog"
    t.string "nisi"
    t.string "hara"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seminars", force: :cascade do |t|
    t.integer "month"
    t.integer "day"
    t.string "youbi"
    t.string "title1"
    t.string "title2"
    t.string "title3"
    t.string "title4"
    t.string "name11"
    t.string "name12"
    t.string "name13"
    t.string "name14"
    t.string "name15"
    t.string "name21"
    t.string "name22"
    t.string "name23"
    t.string "name24"
    t.string "name25"
    t.string "name31"
    t.string "name32"
    t.string "name33"
    t.string "name34"
    t.string "name35"
    t.string "name41"
    t.string "name42"
    t.string "name43"
    t.string "name44"
    t.string "name45"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
