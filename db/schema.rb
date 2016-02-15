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

ActiveRecord::Schema.define(version: 20160207235948) do

  create_table "game_masters", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "city"
    t.string   "state"
    t.text     "bookmark"
    t.integer  "game_master_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "hooks", force: :cascade do |t|
    t.text     "description"
    t.boolean  "used"
    t.integer  "game_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "dexterity",    default: 1
    t.integer  "vitality",     default: 1
    t.integer  "logic",        default: 1
    t.integer  "willpower",    default: 1
    t.integer  "charisma",     default: 1
    t.integer  "empathy",      default: 1
    t.integer  "phys_stress",  default: 0
    t.integer  "ment_stress",  default: 0
    t.integer  "soc_stress",   default: 0
    t.string   "pos_features"
    t.string   "neg_features"
    t.string   "equipment"
    t.integer  "game_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
