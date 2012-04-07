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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120329044718) do

  create_table "blogposts", :force => true do |t|
    t.string   "content"
    t.string   "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "blogposts", ["user_id"], :name => "index_blogposts_on_user_id"

  create_table "friendships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "friendships", ["followed_id"], :name => "index_friendships_on_followed_id"
  add_index "friendships", ["follower_id"], :name => "index_friendships_on_follower_id"

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  add_index "microposts", ["user_id"], :name => "index_microposts_on_user_id"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "salt"
    t.string   "encrypted_password"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
