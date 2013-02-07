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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130207003824) do

  create_table "inscriptions", :force => true do |t|
    t.integer  "student_id"
    t.integer  "representative_id"
    t.integer  "school_period_id"
    t.integer  "level_id"
    t.boolean  "scholarship"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "inscriptions", ["level_id"], :name => "index_inscriptions_on_level_id"
  add_index "inscriptions", ["representative_id"], :name => "index_inscriptions_on_representative_id"
  add_index "inscriptions", ["school_period_id"], :name => "index_inscriptions_on_school_period_id"
  add_index "inscriptions", ["student_id"], :name => "index_inscriptions_on_student_id"

  create_table "kinships", :force => true do |t|
    t.string   "kinship"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "levels", :force => true do |t|
    t.string   "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medicine_students", :force => true do |t|
    t.string   "description"
    t.integer  "medicine_id"
    t.integer  "student_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "medicine_students", ["medicine_id"], :name => "index_medicine_students_on_medicine_id"
  add_index "medicine_students", ["student_id"], :name => "index_medicine_students_on_student_id"

  create_table "medicines", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "representative_students", :force => true do |t|
    t.boolean  "seek"
    t.integer  "kinship_id"
    t.integer  "representative_id"
    t.integer  "student_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "representative_students", ["kinship_id"], :name => "index_representative_students_on_kinship_id"
  add_index "representative_students", ["representative_id"], :name => "index_representative_students_on_representative_id"
  add_index "representative_students", ["student_id"], :name => "index_representative_students_on_student_id"

  create_table "representatives", :force => true do |t|
    t.string   "dni"
    t.string   "phone_number"
    t.string   "mobile_number"
    t.text     "observation"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "last_name"
    t.string   "first_name"
  end

  create_table "school_periods", :force => true do |t|
    t.string   "school_year"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "dni"
    t.string   "school_dni"
    t.boolean  "sex"
    t.text     "birthplace"
    t.text     "direction"
    t.string   "phone_number"
    t.date     "birthdate"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
