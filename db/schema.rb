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

ActiveRecord::Schema[7.0].define(version: 2023_06_30_105059) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us_infos", force: :cascade do |t|
    t.string "company_name"
    t.text "description"
    t.date "founded_on"
    t.string "trusted_by", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.integer "type"
    t.text "description"
    t.string "web_reference"
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_activities_on_city_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "basic_backgrounds", force: :cascade do |t|
    t.string "name"
    t.float "years_of_experience"
    t.string "email"
    t.bigint "phone_number"
    t.string "detailable_type", null: false
    t.bigint "detailable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detailable_type", "detailable_id"], name: "index_basic_backgrounds_on_detailable"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "no_of_traveller"
    t.bigint "package_id", null: false
    t.bigint "user_id", null: false
    t.bigint "guide_id", null: false
    t.bigint "car_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_bookings_on_car_id"
    t.index ["guide_id"], name: "index_bookings_on_guide_id"
    t.index ["package_id"], name: "index_bookings_on_package_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "bookings_hotels", id: false, force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.bigint "hotel_id", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.integer "type"
    t.string "name"
    t.integer "person_limit"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "cities_packages", id: false, force: :cascade do |t|
    t.bigint "city_id", null: false
    t.bigint "package_id", null: false
  end

  create_table "contact_infos", force: :cascade do |t|
    t.bigint "phone_number"
    t.string "email"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_drivers_on_city_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "full_name"
    t.integer "role"
    t.bigint "about_us_info_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["about_us_info_id"], name: "index_employees_on_about_us_info_id"
  end

  create_table "guides", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.integer "star"
    t.integer "rooms_available"
    t.date "booked_dates", default: [], array: true
    t.string "ammeditites", default: [], array: true
    t.string "email"
    t.bigint "phone_number"
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_hotels_on_city_id"
  end

  create_table "hotels_packages", id: false, force: :cascade do |t|
    t.bigint "hotel_id", null: false
    t.bigint "package_id", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
  end

  create_table "packages", force: :cascade do |t|
    t.text "description"
    t.date "dates_of_journey", default: [], array: true
    t.bigint "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_packages_on_state_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "stars"
    t.string "comment"
    t.bigint "user_id", null: false
    t.string "feedbackable_type", null: false
    t.bigint "feedbackable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feedbackable_type", "feedbackable_id"], name: "index_reviews_on_feedbackable"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "socials", force: :cascade do |t|
    t.string "facebook_link"
    t.string "twitter_link"
    t.string "linkedin_link"
    t.string "linkable_type", null: false
    t.bigint "linkable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["linkable_type", "linkable_id"], name: "index_socials_on_linkable"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tips", force: :cascade do |t|
    t.string "comment"
    t.bigint "admin_id", null: false
    t.bigint "package_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_tips_on_admin_id"
    t.index ["package_id"], name: "index_tips_on_package_id"
  end

  create_table "travellers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.date "date_of_birth"
    t.bigint "phone_number"
    t.string "email"
    t.text "address"
    t.bigint "booking_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_travellers_on_booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.bigint "phone_number"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "cities"
  add_foreign_key "bookings", "cars"
  add_foreign_key "bookings", "guides"
  add_foreign_key "bookings", "packages"
  add_foreign_key "bookings", "users"
  add_foreign_key "cities", "states"
  add_foreign_key "drivers", "cities"
  add_foreign_key "employees", "about_us_infos"
  add_foreign_key "hotels", "cities"
  add_foreign_key "locations", "cities"
  add_foreign_key "packages", "states"
  add_foreign_key "reviews", "users"
  add_foreign_key "tips", "admins"
  add_foreign_key "tips", "packages"
  add_foreign_key "travellers", "bookings"
end
