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

ActiveRecord::Schema.define(version: 20190616184258) do

  create_table "brands", force: :cascade do |t|
    t.string "brand_title"
    t.text   "brand_desc"
    t.string "brand_status"
    t.string "brand_mail"
    t.string "brand_phone"
    t.string "brand_website"
    t.string "brand_facebook"
    t.string "brand_twitter"
    t.string "brand_instagram"
  end

end
