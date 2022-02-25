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

ActiveRecord::Schema.define(version: 2022_02_25_190839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "body_parts", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category", null: false
  end

  create_table "exercise_to_body_parts", force: :cascade do |t|
    t.integer "exercise_id", null: false
    t.integer "body_part_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_part_id"], name: "index_exercise_to_body_parts_on_body_part_id"
    t.index ["exercise_id", "body_part_id"], name: "index_exercise_to_body_parts_on_exercise_id_and_body_part_id", unique: true
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "log_entries", force: :cascade do |t|
    t.integer "log_id", null: false
    t.integer "workout_exercise_id", null: false
    t.integer "set_number", null: false
    t.integer "weight"
    t.integer "reps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["log_id"], name: "index_log_entries_on_log_id"
    t.index ["workout_exercise_id"], name: "index_log_entries_on_workout_exercise_id"
  end

  create_table "logs", force: :cascade do |t|
    t.integer "workout_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_logs_on_workout_id"
  end

  create_table "workout_to_exercises", force: :cascade do |t|
    t.integer "exercise_id", null: false
    t.integer "workout_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id", "workout_id"], name: "index_workout_to_exercises_on_exercise_id_and_workout_id", unique: true
    t.index ["workout_id"], name: "index_workout_to_exercises_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
