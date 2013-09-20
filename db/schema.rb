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

ActiveRecord::Schema.define(:version => 20130920034711) do

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.string   "job_details"
    t.string   "shift"
    t.string   "message"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "profile_file_name"
    t.string   "profile_content_type"
    t.integer  "profile_file_size"
    t.datetime "profile_updated_at"
    t.string   "last_name"
    t.string   "gender"
    t.boolean  "dnr"
    t.string   "rate_of_pay"
  end

  create_table "employers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "engagements", :force => true do |t|
    t.string   "contractor_name"
    t.string   "customer_name"
    t.string   "shift"
    t.string   "rate_of_pay"
    t.string   "contractor_last_name"
    t.date     "start_week"
    t.date     "end_week"
    t.integer  "contractor_id"
    t.integer  "customer_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "engagements", ["contractor_id"], :name => "index_engagements_on_contractor_id"
  add_index "engagements", ["customer_id"], :name => "index_engagements_on_customer_id"

  create_table "pg_search_documents", :force => true do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
