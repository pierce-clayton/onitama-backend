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

ActiveRecord::Schema.define(version: 2020_12_24_003422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "user_id", null: false
    t.string "animal"
    t.integer "position"
    t.boolean "red"
    t.string "moves"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_cards_on_game_id"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "state"
    t.integer "winner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "moves", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.integer "current_player"
    t.bigint "piece_id", null: false
    t.bigint "card_id", null: false
    t.integer "piece_x_start"
    t.integer "piece_y_start"
    t.integer "piece_x_end"
    t.integer "piece_y_end"
    t.integer "card_start"
    t.integer "card_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["card_id"], name: "index_moves_on_card_id"
    t.index ["game_id"], name: "index_moves_on_game_id"
    t.index ["piece_id"], name: "index_moves_on_piece_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "user_id", null: false
    t.string "role"
    t.integer "pos_x"
    t.integer "pos_y"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_pieces_on_game_id"
    t.index ["user_id"], name: "index_pieces_on_user_id"
  end

  create_table "user_games", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.boolean "red"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_user_games_on_game_id"
    t.index ["user_id"], name: "index_user_games_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cards", "games"
  add_foreign_key "cards", "users"
  add_foreign_key "moves", "cards"
  add_foreign_key "moves", "games"
  add_foreign_key "moves", "pieces"
  add_foreign_key "pieces", "games"
  add_foreign_key "pieces", "users"
  add_foreign_key "user_games", "games"
  add_foreign_key "user_games", "users"
end
