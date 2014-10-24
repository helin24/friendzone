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

ActiveRecord::Schema.define(version: 20141024211501) do

  create_table "activities", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "location_id"
    t.integer  "slots"
    t.integer  "price"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facebook_accounts", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.integer  "timezone"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facebook_accounts", ["user_id"], name: "index_facebook_accounts_on_user_id"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participations", force: true do |t|
    t.integer  "activity_id"
    t.integer  "participator_id"
    t.boolean  "accepted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "facebook_id"
    t.string   "google_id"
    t.string   "twitter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
