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

ActiveRecord::Schema.define(version: 20151119130239) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "birthday"
    t.string   "gender",     limit: 255
    t.string   "place",      limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.float    "quantity",   limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
    t.float    "sale_value", limit: 24
  end

  create_table "purchase_items", force: :cascade do |t|
    t.integer  "product_id",  limit: 4
    t.integer  "purchase_id", limit: 4
    t.float    "quantity",    limit: 24
    t.float    "value",       limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "purchase_items", ["product_id"], name: "index_purchase_items_on_product_id", using: :btree
  add_index "purchase_items", ["purchase_id"], name: "index_purchase_items_on_purchase_id", using: :btree

  create_table "purchases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sale_items", force: :cascade do |t|
    t.integer  "product_id",    limit: 4
    t.integer  "sale_id",       limit: 4
    t.float    "sale_quantity", limit: 24
    t.float    "sale_value",    limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "sale_items", ["product_id"], name: "index_sale_items_on_product_id", using: :btree
  add_index "sale_items", ["sale_id"], name: "index_sale_items_on_sale_id", using: :btree

  create_table "sales", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "client_id",  limit: 4
  end

  add_index "sales", ["client_id"], name: "index_sales_on_client_id", using: :btree

  add_foreign_key "purchase_items", "products"
  add_foreign_key "purchase_items", "purchases"
  add_foreign_key "sale_items", "products"
  add_foreign_key "sale_items", "sales"
  add_foreign_key "sales", "clients"
end
