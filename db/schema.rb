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

ActiveRecord::Schema.define(version: 20170302072903) do

  create_table "channels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "channel_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["channel_name"], name: "index_channels_on_channel_name", unique: true, using: :btree
  end

  create_table "holders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password"
    t.integer  "holder_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_name"], name: "index_holders_on_user_name", unique: true, using: :btree
  end

  create_table "holders_channels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "channel_id"
    t.integer  "holder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id", "holder_id"], name: "index_holders_channels_on_channel_id_and_holder_id", unique: true, using: :btree
    t.index ["channel_id"], name: "index_holders_channels_on_channel_id", using: :btree
    t.index ["holder_id"], name: "index_holders_channels_on_holder_id", using: :btree
  end

  create_table "movies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "update_status",    default: 0
    t.string   "content_tv"
    t.string   "content_pc"
    t.string   "content_sp"
    t.string   "content_tab"
    t.string   "content_original"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "page_views", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "program_id"
    t.integer  "channel_id"
    t.integer  "user_id"
    t.integer  "schedule_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["channel_id"], name: "index_page_views_on_channel_id", using: :btree
    t.index ["program_id"], name: "index_page_views_on_program_id", using: :btree
    t.index ["schedule_id"], name: "index_page_views_on_schedule_id", using: :btree
    t.index ["user_id"], name: "index_page_views_on_user_id", using: :btree
  end

  create_table "programs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "holder_id"
    t.boolean  "time_shift_flag"
    t.string   "name"
    t.boolean  "public_flag"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["holder_id"], name: "index_programs_on_holder_id", using: :btree
  end

  create_table "programs_movies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "program_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_programs_movies_on_movie_id", using: :btree
    t.index ["program_id", "movie_id"], name: "index_programs_movies_on_program_id_and_movie_id", unique: true, using: :btree
    t.index ["program_id"], name: "index_programs_movies_on_program_id", using: :btree
  end

  create_table "pv_channels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pv_count",   default: 0
    t.integer  "channel_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.date     "date"
    t.index ["channel_id"], name: "index_pv_channels_on_channel_id", using: :btree
    t.index ["date", "channel_id"], name: "index_pv_channels_on_date_and_channel_id", using: :btree
  end

  create_table "pv_programs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "date"
    t.integer  "schedule_id"
    t.integer  "pv_count",    default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["date", "schedule_id"], name: "index_pv_programs_on_date_and_schedule_id", using: :btree
    t.index ["schedule_id"], name: "index_pv_programs_on_schedule_id", using: :btree
  end

  create_table "schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "channel_id"
    t.integer  "program_id"
    t.integer  "type"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_schedules_on_channel_id", using: :btree
    t.index ["program_id"], name: "index_schedules_on_program_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_name"], name: "index_users_on_user_name", unique: true, using: :btree
  end

end
