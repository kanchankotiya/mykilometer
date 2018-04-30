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

ActiveRecord::Schema.define(version: 20180427100440) do

  create_table "business_types", force: :cascade do |t|
    t.string "name"
    t.string "business_icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_tickets", force: :cascade do |t|
    t.string "price"
    t.string "name"
    t.datetime "sales_start_date"
    t.datetime "sales_end_date"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_tickets_on_event_id"
  end

  create_table "event_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "baneer_image"
    t.text "description"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string "vanue"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "event_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vendor_id"
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
    t.index ["vendor_id"], name: "index_events_on_vendor_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "contact1"
    t.string "contact2"
    t.string "email"
    t.string "address"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shop_items", force: :cascade do |t|
    t.string "item_name"
    t.integer "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item_price"
    t.index ["shop_id"], name: "index_shop_items_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "cover_image"
    t.integer "owner_id"
    t.integer "business_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_type_id"], name: "index_shops_on_business_type_id"
    t.index ["owner_id"], name: "index_shops_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "otp_secret_key"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "contact"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["email"], name: "index_vendors_on_email", unique: true
    t.index ["invitation_token"], name: "index_vendors_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_vendors_on_invitations_count"
    t.index ["invited_by_id"], name: "index_vendors_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_vendors_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_vendors_on_reset_password_token", unique: true
  end

end
