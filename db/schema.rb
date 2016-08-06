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

ActiveRecord::Schema.define(version: 20160806073802) do

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "postname"
    t.string   "metakeywords"
    t.text     "metadescription",          limit: 65535
    t.string   "metaurl"
    t.string   "metaimage"
    t.text     "content",                  limit: 65535
    t.boolean  "hide"
    t.boolean  "home"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "postpicture_file_name"
    t.string   "postpicture_content_type"
    t.integer  "postpicture_file_size"
    t.datetime "postpicture_updated_at"
    t.string   "slug"
    t.index ["slug"], name: "index_posts_on_slug", unique: true, using: :btree
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "survicename"
    t.string   "metakeywords"
    t.text     "metadescription",             limit: 65535
    t.string   "metaurl"
    t.string   "metaimage"
    t.text     "content",                     limit: 65535
    t.boolean  "active"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "servicepicture_file_name"
    t.string   "servicepicture_content_type"
    t.integer  "servicepicture_file_size"
    t.datetime "servicepicture_updated_at"
    t.string   "slug"
    t.index ["slug"], name: "index_services_on_slug", unique: true, using: :btree
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "itemname"
    t.string   "metakeywords"
    t.text     "metadescription",          limit: 65535
    t.string   "metaurl"
    t.string   "metaimage"
    t.text     "content",                  limit: 65535
    t.integer  "price"
    t.boolean  "available"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "itempicture_file_name"
    t.string   "itempicture_content_type"
    t.integer  "itempicture_file_size"
    t.datetime "itempicture_updated_at"
    t.string   "slug"
    t.index ["slug"], name: "index_shops_on_slug", unique: true, using: :btree
  end

  create_table "trainers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "trainername"
    t.string   "metakeywords"
    t.text     "metadescription",             limit: 65535
    t.string   "metaurl"
    t.string   "metaimage"
    t.text     "content",                     limit: 65535
    t.boolean  "pilates"
    t.boolean  "privatetraining"
    t.boolean  "ciruittraining"
    t.boolean  "trx"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "trainerpicture_file_name"
    t.string   "trainerpicture_content_type"
    t.integer  "trainerpicture_file_size"
    t.datetime "trainerpicture_updated_at"
    t.string   "slug"
    t.index ["slug"], name: "index_trainers_on_slug", unique: true, using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  add_foreign_key "users", "roles"
end
