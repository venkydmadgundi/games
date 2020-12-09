# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_09_153519) do

  create_table "games", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.integer "target_group"
    t.bigint "theme_id", null: false
    t.bigint "genre_id", null: false
    t.bigint "violence_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_games_on_genre_id"
    t.index ["theme_id"], name: "index_games_on_theme_id"
    t.index ["violence_id"], name: "index_games_on_violence_id"
  end

  create_table "genres", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "themes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "users_games", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.index ["game_id"], name: "index_users_games_on_game_id"
    t.index ["user_id"], name: "index_users_games_on_user_id"
  end

  create_table "users_genres", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "genre_id", null: false
    t.index ["genre_id"], name: "index_users_genres_on_genre_id"
    t.index ["user_id"], name: "index_users_genres_on_user_id"
  end

  create_table "users_themes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "theme_id", null: false
    t.index ["theme_id"], name: "index_users_themes_on_theme_id"
    t.index ["user_id"], name: "index_users_themes_on_user_id"
  end

  create_table "users_violences", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "violence_id", null: false
    t.index ["user_id"], name: "index_users_violences_on_user_id"
    t.index ["violence_id"], name: "index_users_violences_on_violence_id"
  end

  create_table "violences", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "games", "genres"
  add_foreign_key "games", "themes"
  add_foreign_key "games", "violences"
  add_foreign_key "users_games", "games"
  add_foreign_key "users_games", "users"
  add_foreign_key "users_genres", "genres"
  add_foreign_key "users_genres", "users"
  add_foreign_key "users_themes", "themes"
  add_foreign_key "users_themes", "users"
  add_foreign_key "users_violences", "users"
  add_foreign_key "users_violences", "violences"
end
