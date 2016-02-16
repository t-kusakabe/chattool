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

ActiveRecord::Schema.define(version: 20160215171652) do

  create_table "chats", force: :cascade do |t|
    t.text     "comment",     limit: 65535
    t.string   "contributor", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image",       limit: 65535
    t.text     "opponent",    limit: 65535
  end

  create_table "dms", force: :cascade do |t|
    t.text     "comment",     limit: 65535
    t.string   "contributor", limit: 255
    t.string   "opponent",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image",       limit: 65535
  end

  create_table "groups", force: :cascade do |t|
    t.text     "group_name",  limit: 65535
    t.text     "description", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "useraccounts", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "accountname",            limit: 255
    t.string   "color",                  limit: 255
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "useraccounts", ["email"], name: "index_useraccounts_on_email", unique: true, using: :btree
  add_index "useraccounts", ["reset_password_token"], name: "index_useraccounts_on_reset_password_token", unique: true, using: :btree

end
