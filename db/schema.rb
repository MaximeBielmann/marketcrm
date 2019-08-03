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

ActiveRecord::Schema.define(version: 20190803155420) do

  create_table "brands", force: :cascade do |t|
    t.string  "brand_title"
    t.text    "brand_desc"
    t.string  "brand_status"
    t.string  "brand_mail"
    t.string  "brand_phone"
    t.string  "brand_website"
    t.string  "brand_facebook"
    t.string  "brand_twitter"
    t.string  "brand_instagram"
    t.string  "brand_siren"
    t.string  "brand_address"
    t.string  "brand_postal"
    t.string  "brand_city"
    t.string  "brand_juridiq"
    t.string  "brand_group"
    t.boolean "brand_market_sign",      default: false
    t.boolean "brand_market_paiement",  default: false
    t.boolean "brand_market_shipping",  default: false
    t.boolean "brand_market_frontpage", default: false
    t.boolean "brand_market_products",  default: false
    t.string  "brand_market_coach",     default: "Maxime"
    t.text    "brand_observation",      default: "Néant"
  end

  create_table "members", force: :cascade do |t|
    t.integer "brand_id"
    t.integer "people_id"
    t.string  "member_role"
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "brand_id"
    t.integer  "people_id"
    t.datetime "note_datetime"
    t.string   "note_content"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "person_facebook"
    t.string "person_twitter"
    t.string "person_instagram"
    t.string "person_website"
    t.string "person_mail"
    t.string "person_phone"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
  end

end
