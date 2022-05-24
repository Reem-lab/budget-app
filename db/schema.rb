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

ActiveRecord::Schema[7.0].define(version: 2022_05_24_031539) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "group_purchases", force: :cascade do |t|
    t.integer "group_id"
    t.integer "purchase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_purchases_on_group_id"
    t.index ["purchase_id"], name: "index_group_purchases_on_purchase_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_purchases"
    t.index ["author_id"], name: "index_groups_on_author_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_purchases_on_author_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "group_purchases", "groups"
  add_foreign_key "group_purchases", "purchases"
  add_foreign_key "groups", "users", column: "author_id"
  add_foreign_key "purchases", "users", column: "author_id"
end
