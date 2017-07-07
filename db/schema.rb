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

ActiveRecord::Schema.define(version: 20170707202520) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "pet_health"
    t.integer "pet_hunger"
    t.integer "pet_boredom"
    t.integer "pet_filthiness"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_cares", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "pet_health"
    t.integer "pet_hunger"
    t.integer "pet_boredom"
    t.integer "pet_filthiness"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.integer "health", default: 10
    t.integer "hunger", default: 0
    t.integer "boredom", default: 0
    t.integer "filthiness", default: 0
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "time_decays", force: :cascade do |t|
    t.datetime "last_action"
    t.datetime "current_action"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "pet_health"
    t.integer "pet_hunger"
    t.integer "pet_boredom"
    t.integer "pet_filthiness"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
