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

ActiveRecord::Schema.define(version: 20160725152915) do

  create_table "analytes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "analyte_name"
    t.string   "result_range"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "hospitals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "hospital_name"
    t.string   "hospital_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "limit_analytes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "physician_id"
    t.integer  "analyte_id"
    t.string   "limit_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["physician_id", "analyte_id"], name: "index_limit_analytes_on_physician_id_and_analyte_id", using: :btree
  end

  create_table "patients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "hospital_id"
    t.string   "physician_name"
    t.string   "physician_phone_number"
    t.string   "physician_type"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["hospital_id"], name: "index_physicians_on_hospital_id", using: :btree
  end

  create_table "results", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "specimen_id"
    t.integer  "analyte_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["specimen_id", "analyte_id"], name: "index_results_on_specimen_id_and_analyte_id", using: :btree
  end

  create_table "specimen", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "physician_id"
    t.string   "sample_name"
    t.date     "date_received"
    t.string   "sample_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["physician_id"], name: "index_specimen_on_physician_id", using: :btree
  end

end
