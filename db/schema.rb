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

ActiveRecord::Schema.define(version: 20160721055045) do

  create_table "problems", force: :cascade do |t|
    t.integer  "theme_id"
    t.integer  "category"
    t.integer  "level"
    t.text     "content"
    t.text     "answer"
    t.integer  "correct_counter"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "section_id"
    t.index ["section_id"], name: "index_problems_on_section_id"
    t.index ["theme_id"], name: "index_problems_on_theme_id"
  end

  create_table "sections", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "number"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_sections_on_subject_id"
  end

  create_table "sheet_problems", force: :cascade do |t|
    t.integer  "sheet_id"
    t.integer  "problem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["problem_id"], name: "index_sheet_problems_on_problem_id"
    t.index ["sheet_id"], name: "index_sheet_problems_on_sheet_id"
  end

  create_table "sheets", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "sheets_problem_id"
    t.index ["sheets_problem_id"], name: "index_sheets_on_sheets_problem_id"
    t.index ["user_id"], name: "index_sheets_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.integer  "section_id"
    t.integer  "number"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_themes_on_section_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
