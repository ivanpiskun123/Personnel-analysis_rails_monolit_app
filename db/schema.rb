# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_06_232221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidate_criterium_scores", force: :cascade do |t|
    t.integer "score", default: 0, null: false
    t.bigint "criteria_id"
    t.bigint "candidate_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_candidate_criterium_scores_on_candidate_id"
    t.index ["criteria_id"], name: "index_candidate_criterium_scores_on_criteria_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "second_name", default: "", null: false
    t.string "image_url"
    t.string "email", default: "", null: false
    t.string "number"
    t.float "expirience_years", default: 0.0
    t.text "biography", default: ""
    t.bigint "status_id"
    t.bigint "vacancy_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["status_id"], name: "index_candidates_on_status_id"
    t.index ["vacancy_id"], name: "index_candidates_on_vacancy_id"
  end

  create_table "criteria", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "position_criterium_scores", force: :cascade do |t|
    t.integer "score", default: 0, null: false
    t.bigint "criteria_id"
    t.bigint "position_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["criteria_id"], name: "index_position_criterium_scores_on_criteria_id"
    t.index ["position_id"], name: "index_position_criterium_scores_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: "", null: false
    t.boolean "is_admin", default: false, null: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "vacancies", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.boolean "status", default: false, null: false
    t.date "opening_date", null: false
    t.date "closing_date"
    t.bigint "position_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["position_id"], name: "index_vacancies_on_position_id"
  end

end
