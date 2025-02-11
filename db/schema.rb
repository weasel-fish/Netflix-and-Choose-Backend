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

ActiveRecord::Schema.define(version: 2021_07_15_163349) do

  create_table "group_movies", force: :cascade do |t|
    t.integer "group_id"
    t.integer "movie_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "group_name"
    t.integer "host_id"
    t.integer "winner"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.float "rating"
    t.integer "release_date"
    t.string "image"
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "user_group_id"
    t.integer "movie_id"
    t.integer "rank"
    t.boolean "eliminated"
  end

end
