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

ActiveRecord::Schema.define(version: 20170819105649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_books", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "party_memberships", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "phone_number"
    t.text     "email"
    t.text     "id_code"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "address_book_id"
    t.integer  "party_membership_id"
    t.index ["address_book_id"], name: "index_users_on_address_book_id", using: :btree
    t.index ["party_membership_id"], name: "index_users_on_party_membership_id", using: :btree
  end

  add_foreign_key "users", "address_books"
  add_foreign_key "users", "party_memberships"
end
