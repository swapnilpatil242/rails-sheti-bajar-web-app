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

ActiveRecord::Schema.define(version: 2019_06_16_152937) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "city"
    t.string "taluka"
    t.string "district"
    t.string "state"
    t.integer "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city"], name: "index_addresses_on_city"
    t.index ["district"], name: "index_addresses_on_district"
    t.index ["taluka"], name: "index_addresses_on_taluka"
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_categories_on_title"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "quantity"
    t.boolean "is_verified", default: false
    t.boolean "is_deleted", default: false
    t.boolean "is_blocked", default: false
    t.boolean "is_completed", default: false
    t.bigint "address_id"
    t.bigint "category_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_products_on_address_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["is_blocked"], name: "index_products_on_is_blocked"
    t.index ["is_completed"], name: "index_products_on_is_completed"
    t.index ["is_deleted"], name: "index_products_on_is_deleted"
    t.index ["is_verified"], name: "index_products_on_is_verified"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "uploaded_files", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file_name"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_uploaded_files_on_imageable_type_and_imageable_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "mobile_no"
    t.string "profile"
    t.boolean "is_verified", default: false
    t.boolean "is_deleted", default: false
    t.boolean "is_suspended", default: false
    t.string "secrete_token"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_users_on_address_id"
    t.index ["is_deleted"], name: "index_users_on_is_deleted"
    t.index ["is_suspended"], name: "index_users_on_is_suspended"
    t.index ["is_verified"], name: "index_users_on_is_verified"
    t.index ["mobile_no"], name: "index_users_on_mobile_no"
    t.index ["secrete_token"], name: "index_users_on_secrete_token", unique: true
  end

  add_foreign_key "products", "addresses"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "users"
  add_foreign_key "users", "addresses"
end
