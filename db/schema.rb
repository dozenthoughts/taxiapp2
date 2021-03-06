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

ActiveRecord::Schema.define(version: 20140518180647) do

  create_table "admins", force: true do |t|
    t.integer "user_id"
  end

  create_table "dispatchers", force: true do |t|
    t.integer "user_id"
    t.string  "name"
    t.string  "surname"
  end

  create_table "drivers", force: true do |t|
    t.integer "user_id"
    t.string  "phone"
    t.string  "name"
    t.string  "surname"
    t.string  "state"
  end

  create_table "expenses", force: true do |t|
    t.integer  "ticket_id"
    t.integer  "driver_id"
    t.string   "expenses_type"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suggestions", force: true do |t|
    t.string   "state"
    t.integer  "ticket_id"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.string   "state"
    t.string   "name"
    t.string   "phone"
    t.text     "pick_up_latlon"
    t.text     "drop_off_latlon"
    t.datetime "pick_up_time"
    t.datetime "drop_off_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pick_up_location"
    t.string   "drop_off_location"
    t.integer  "dispatcher_id"
    t.integer  "driver_id"
    t.text     "note"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.integer  "payment_amount"
    t.string   "payment_method"
    t.integer  "payment_tip"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
