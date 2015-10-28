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

ActiveRecord::Schema.define(version: 20151021005821) do

  create_table "alumno_cursos", force: true do |t|
    t.integer  "alumno_id"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alumno_cursos", ["alumno_id"], name: "index_alumno_cursos_on_alumno_id"
  add_index "alumno_cursos", ["curso_id"], name: "index_alumno_cursos_on_curso_id"

  create_table "alumnos", force: true do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coments", force: true do |t|
    t.text     "description"
    t.string   "usuario"
    t.integer  "posts_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coments", ["posts_id"], name: "index_coments_on_posts_id"

  create_table "cursos", force: true do |t|
    t.string   "nombre"
    t.integer  "nivel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "titulo"
    t.text     "cuerpo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "usuario"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
