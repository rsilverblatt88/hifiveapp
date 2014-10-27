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

ActiveRecord::Schema.define(version: 20141027135509) do

  create_table "hifives", force: true do |t|
    t.integer  "user_id"
    t.string   "to"
    t.string   "from"
    t.integer  "phone"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hifives", ["user_id"], name: "index_hifives_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "user"
    t.integer  "phone"
    t.string   "role"
    t.string   "image"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
