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

ActiveRecord::Schema.define(version: 2020_04_12_065349) do

  create_table "lectures", force: :cascade do |t|
    t.string "title", null: false
    t.string "date", null: false
    t.integer "subject_id"
    t.index ["subject_id"], name: "index_lectures_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title", null: false
    t.string "weekday", null: false
    t.integer "period", null: false
    t.integer "teacher_id"
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
  end

end
