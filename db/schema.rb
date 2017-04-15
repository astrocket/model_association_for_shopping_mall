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

ActiveRecord::Schema.define(version: 20170414074408) do

  create_table "businessments", force: :cascade do |t|
    t.string   "name"
    t.integer  "seller_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "businessments", ["product_id"], name: "index_businessments_on_product_id"
  add_index "businessments", ["seller_id"], name: "index_businessments_on_seller_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchasements", force: :cascade do |t|
    t.string   "name"
    t.integer  "buyer_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "purchasements", ["buyer_id"], name: "index_purchasements_on_buyer_id"
  add_index "purchasements", ["product_id"], name: "index_purchasements_on_product_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
