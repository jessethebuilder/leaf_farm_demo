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

ActiveRecord::Schema.define(version: 20150307103243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "label"
    t.string   "street"
    t.string   "street2"
    t.string   "street3"
    t.string   "number"
    t.string   "care_of"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "has_address_type"
    t.integer  "has_address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_infos", force: :cascade do |t|
    t.string  "phone"
    t.string  "phone2"
    t.string  "phone3"
    t.string  "main_email"
    t.string  "billing_email"
    t.string  "website_url"
    t.integer "has_contact_info_id"
    t.string  "has_contact_info_type"
  end

  create_table "dispensaries", force: :cascade do |t|
    t.string   "name"
    t.string   "logo_url"
    t.text     "description"
    t.string   "cover_photo_url"
    t.text     "photo_urls"
    t.string   "tag_line"
    t.string   "tag_line_blurb"
    t.text     "details_data"
    t.text     "menu_data"
    t.string   "leafly_slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "atm"
    t.boolean  "credit"
    t.boolean  "veterans_discount"
    t.boolean  "store_front"
    t.boolean  "ada"
    t.boolean  "delivery"
    t.boolean  "retail"
    t.boolean  "medical"
    t.text     "hours"
    t.integer  "update_frequency"
    t.text     "specials_data"
    t.text     "reviews_data"
    t.string   "google_api_key"
  end

  create_table "dispensary_menus", force: :cascade do |t|
    t.integer  "dispensary_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dispensary_products", force: :cascade do |t|
    t.string   "source"
    t.string   "name"
    t.text     "description"
    t.string   "product_type"
    t.string   "source_image_path"
    t.text     "pricing_array"
    t.string   "slug"
    t.string   "rating"
    t.string   "rating_count"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dispensary_menu_id"
  end

  create_table "farm_notes", force: :cascade do |t|
    t.integer  "has_farm_notes_id"
    t.string   "has_farm_notes_type"
    t.text     "content"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "leafly_connections", force: :cascade do |t|
    t.string   "app_id"
    t.string   "app_key"
    t.string   "app_name"
    t.string   "leafly_connectable_type"
    t.integer  "leafly_connectable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_stories", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "published",                default: false
    t.boolean  "archived",                 default: false
    t.string   "main_news_story_image"
    t.string   "writes_news_stories_type"
    t.string   "writes_news_stories_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "slug"
  end

  create_table "patient_profiles", force: :cascade do |t|
    t.string   "state_id"
    t.string   "certification"
    t.date     "state_id_expires"
    t.date     "certification_expires"
    t.text     "symptoms",                 default: "--- []\n"
    t.string   "sex"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "has_patient_profile_id"
    t.string   "has_patient_profile_type"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "social_networking_profiles", force: :cascade do |t|
    t.string   "facebook_app_id"
    t.string   "facebook_app_secret"
    t.string   "facebook_id"
    t.string   "twitter_app_id"
    t.string   "twitter_id"
    t.string   "has_social_networking_id"
    t.string   "has_social_networking_type"
    t.string   "tumblr_id"
    t.string   "google_plus_id"
    t.string   "pinterest_id"
    t.string   "instagram_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "leafly_app_id"
    t.string   "leafly_app_key"
  end

  create_table "specials", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "fine_print"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
