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

ActiveRecord::Schema.define(version: 20161127002923) do

  create_table "castings", force: :cascade do |t|
    t.string   "noma"
    t.string   "linka"
    t.string   "nomb"
    t.string   "linkb"
    t.string   "nomc"
    t.string   "linkc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "episode_id"
    t.integer  "film_id"
  end

  add_index "castings", ["episode_id"], name: "index_castings_on_episode_id"
  add_index "castings", ["film_id"], name: "index_castings_on_film_id"

  create_table "episodes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "video_link"
    t.string   "titleen"
    t.text     "descen"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fellows", force: :cascade do |t|
    t.string   "name"
    t.text     "date"
    t.text     "description"
    t.text     "link"
    t.text     "descen"
    t.text     "dateen"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "films", force: :cascade do |t|
    t.string   "title"
    t.text     "date"
    t.text     "description"
    t.string   "link"
    t.string   "slug"
    t.string   "titleen"
    t.string   "slugen"
    t.text     "descen"
    t.text     "dateen"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
