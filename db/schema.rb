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

ActiveRecord::Schema.define(version: 20131106070502) do

  create_table "albums", force: true do |t|
    t.string   "title"
    t.date     "release_date"
    t.text     "info"
    t.string   "buy_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "band_profiles", force: true do |t|
    t.string   "name"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "gigs", force: true do |t|
    t.string   "title"
    t.date     "date"
    t.time     "start_time"
    t.time     "finish_time"
    t.string   "location"
    t.string   "street_address"
    t.string   "suburb"
    t.string   "tickets_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "band_profile_id"
  end

  create_table "links", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "band_profile_id"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["band_profile_id"], name: "index_links_on_band_profile_id"
  add_index "links", ["member_id"], name: "index_links_on_member_id"

  create_table "members", force: true do |t|
    t.string   "name"
    t.text     "info"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "image"
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "band_profile_id"
  end

  add_index "photos", ["band_profile_id"], name: "index_photos_on_band_profile_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "tracks", force: true do |t|
    t.string   "title"
    t.integer  "album_id"
    t.text     "info"
    t.string   "buy_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tracks", ["album_id"], name: "index_tracks_on_album_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
