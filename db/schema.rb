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

ActiveRecord::Schema.define(version: 20161217173320) do

  create_table "ordenanzas", force: :cascade do |t|
    t.string   "titulo",         limit: 255
    t.date     "fecha"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "numero",         limit: 255
    t.string   "anio",           limit: 255
    t.string   "tema",           limit: 255
    t.string   "sintesis",       limit: 255
    t.string   "vigente",        limit: 255
    t.string   "unidad_id",      limit: 255
    t.string   "generalidad_id", limit: 255
  end

  add_index "ordenanzas", ["anio"], name: "index_ordenanzas_on_anio", using: :btree
  add_index "ordenanzas", ["numero"], name: "index_ordenanzas_on_numero", using: :btree
  add_index "ordenanzas", ["tema"], name: "index_ordenanzas_on_tema", using: :btree

end
