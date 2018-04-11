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

ActiveRecord::Schema.define(version: 20180411052113) do

  create_table "business_types", force: :cascade do |t|
    t.string "name"
    t.string "business_icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
