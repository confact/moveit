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

ActiveRecord::Schema.define(version: 20_160_402_135_004) do
  create_table 'offers', force: true do |t|
    t.string   'name'
    t.string   'email'
    t.string   'from_address'
    t.string   'to_address'
    t.integer  'distance'
    t.integer  'living_area'
    t.integer  'storage_area'
    t.boolean  'piano'
    t.boolean  'help'
    t.integer  'price'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.string   'client'
  end
end
