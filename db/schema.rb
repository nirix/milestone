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

ActiveRecord::Schema.define(:version => 20130218111220) do

  create_table "groups", :force => true do |t|
    t.string  "name",                        :null => false
    t.boolean "is_admin", :default => false, :null => false
  end

  create_table "projects", :force => true do |t|
    t.string "name",        :null => false
    t.string "slug",        :null => false
    t.text   "description"
  end

  add_index "projects", ["slug"], :name => "index_projects_on_slug", :unique => true

  create_table "settings", :force => true do |t|
    t.string "name",                                :null => false
    t.text   "value"
    t.string "setting_type",    :default => "text", :null => false
    t.text   "possible_values"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                       :null => false
    t.string   "password_digest",                :null => false
    t.string   "email",                          :null => false
    t.string   "name",                           :null => false
    t.integer  "group_id",        :default => 2, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

end
