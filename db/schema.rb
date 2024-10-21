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

ActiveRecord::Schema.define(version: 2024_10_20_003422) do

  create_table "carreta", charset: "utf8", force: :cascade do |t|
    t.string "placa"
    t.string "tipo"
    t.string "tamanho"
    t.integer "eixos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "empresas", charset: "utf8", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "endereco"
    t.string "logotipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "filials", charset: "utf8", force: :cascade do |t|
    t.string "nome"
    t.bigint "empresa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "endereco"
    t.index ["empresa_id"], name: "index_filials_on_empresa_id"
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role", default: 0
    t.boolean "approved", default: false
    t.bigint "current_filial_id"
    t.boolean "master", default: false, null: false
    t.bigint "empresa_id"
    t.index ["current_filial_id"], name: "index_users_on_current_filial_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["empresa_id"], name: "index_users_on_empresa_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_filials", charset: "utf8", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "filial_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["filial_id"], name: "index_users_filials_on_filial_id"
    t.index ["user_id"], name: "index_users_filials_on_user_id"
  end

  create_table "vistoria", charset: "utf8", force: :cascade do |t|
    t.bigint "carreta_id", null: false
    t.string "vistoriador"
    t.string "destino"
    t.string "tipo_vistoria"
    t.date "data"
    t.string "arquivo_pdf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carreta_id"], name: "index_vistoria_on_carreta_id"
  end

  add_foreign_key "filials", "empresas"
  add_foreign_key "users", "empresas"
  add_foreign_key "users", "filials", column: "current_filial_id"
  add_foreign_key "users_filials", "filials"
  add_foreign_key "users_filials", "users"
  add_foreign_key "vistoria", "carreta", column: "carreta_id"
end
