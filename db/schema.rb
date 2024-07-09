# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_07_08_053011) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title", limit: 50, null: false
    t.integer "status", default: 0
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "categories_created_at"
    t.index ["status"], name: "categories_status"
    t.index ["updated_at"], name: "categories_updated_at"
    t.index ["user_id"], name: "categories_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title", limit: 50, null: false
    t.text "content", null: false
    t.float "price", default: 0.0, null: false
    t.string "currency", limit: 5, null: false
    t.string "image_path", null: false
    t.string "featured_image_path", null: false
    t.string "logo_image_path", null: false
    t.json "props", default: {}
    t.integer "status", default: 0
    t.integer "category_id", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "products_category_id"
    t.index ["created_at"], name: "products_created_at"
    t.index ["status"], name: "products_status"
    t.index ["updated_at"], name: "products_updated_at"
    t.index ["user_id"], name: "products_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating", default: 1, null: false
    t.integer "product_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "reviews_created_at"
    t.index ["product_id"], name: "reviews_product_id"
    t.index ["updated_at"], name: "reviews_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 50, null: false
    t.string "name", limit: 50, null: false
    t.string "site_link", null: false
    t.string "image_path", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "users_created_at"
    t.index ["email"], name: "users_email", unique: true
    t.index ["updated_at"], name: "users_updated_at"
  end

end
