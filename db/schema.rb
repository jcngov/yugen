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

ActiveRecord::Schema.define(version: 20160224200930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string   "title"
    t.string   "image_url"
    t.integer  "post_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "postpicture_file_name"
    t.string   "postpicture_content_type"
    t.integer  "postpicture_file_size"
    t.datetime "postpicture_updated_at"
  end

  add_index "images", ["post_id"], name: "index_images_on_post_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "continent"
    t.string   "country"
    t.string   "region"
    t.string   "city"
    t.string   "long"
    t.string   "lat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations_posts", force: :cascade do |t|
    t.integer "location_id"
    t.integer "post_id"
  end

  add_index "locations_posts", ["location_id"], name: "index_locations_posts_on_location_id", using: :btree
  add_index "locations_posts", ["post_id"], name: "index_locations_posts_on_post_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.date     "traveled_on"
    t.text     "description"
    t.text     "pros"
    t.text     "cons"
    t.text     "tips_and_tricks"
    t.date     "post_on"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "sex"
    t.date     "born_on"
    t.string   "profile_picture_url"
    t.string   "password_digest"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "profilepicture_file_name"
    t.string   "profilepicture_content_type"
    t.integer  "profilepicture_file_size"
    t.datetime "profilepicture_updated_at"
  end

  add_foreign_key "images", "posts"
  add_foreign_key "locations_posts", "locations"
  add_foreign_key "locations_posts", "posts"
  add_foreign_key "posts", "users"
end
