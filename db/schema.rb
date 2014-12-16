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

ActiveRecord::Schema.define(version: 20141215040331) do

  create_table "account_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accounts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "country"
    t.integer  "addressable_id"
    t.integer  "addressable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call_purposes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaign_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaign_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_origins", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_reasons", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descriptions", force: true do |t|
    t.text     "context"
    t.integer  "descripable_id"
    t.string   "descripable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.integer  "priority_id"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.string   "location"
    t.integer  "owner"
    t.integer  "event_status_id"
    t.integer  "related_to"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["company_id"], name: "index_events_on_company_id"
  add_index "events", ["event_status_id"], name: "index_events_on_event_status_id"
  add_index "events", ["priority_id"], name: "index_events_on_priority_id"
  add_index "events", ["related_to"], name: "index_events_on_related_to"

  create_table "gl_accounts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "sales_order_id"
    t.integer  "purchase_order_id"
    t.integer  "excise_duty"
    t.date     "invoice_date"
    t.date     "due_date"
    t.integer  "order_status_id"
    t.integer  "sales_com"
    t.integer  "account_id"
    t.integer  "product_id"
    t.integer  "contact_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["account_id"], name: "index_invoices_on_account_id"
  add_index "invoices", ["company_id"], name: "index_invoices_on_company_id"
  add_index "invoices", ["contact_id"], name: "index_invoices_on_contact_id"
  add_index "invoices", ["order_status_id"], name: "index_invoices_on_order_status_id"
  add_index "invoices", ["owner"], name: "index_invoices_on_owner"
  add_index "invoices", ["product_id"], name: "index_invoices_on_product_id"
  add_index "invoices", ["purchase_order_id"], name: "index_invoices_on_purchase_order_id"
  add_index "invoices", ["sales_order_id"], name: "index_invoices_on_sales_order_id"

  create_table "lead_sources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lead_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leads", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ownerships", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_calls", force: true do |t|
    t.string   "name"
    t.integer  "call_form"
    t.integer  "call_to"
    t.integer  "related_to"
    t.integer  "owner"
    t.integer  "call_status_id"
    t.integer  "call_purpose_id"
    t.integer  "call_type_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phone_calls", ["call_form"], name: "index_phone_calls_on_call_form"
  add_index "phone_calls", ["call_purpose_id"], name: "index_phone_calls_on_call_purpose_id"
  add_index "phone_calls", ["call_status_id"], name: "index_phone_calls_on_call_status_id"
  add_index "phone_calls", ["call_to"], name: "index_phone_calls_on_call_to"
  add_index "phone_calls", ["call_type_id"], name: "index_phone_calls_on_call_type_id"
  add_index "phone_calls", ["company_id"], name: "index_phone_calls_on_company_id"
  add_index "phone_calls", ["owner"], name: "index_phone_calls_on_owner"
  add_index "phone_calls", ["related_to"], name: "index_phone_calls_on_related_to"

  create_table "potential_stages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "potential_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "potentials", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pricing_models", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pricing_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priorities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchase_orders", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "po_no"
    t.integer  "vendor_id"
    t.integer  "requistion_no"
    t.integer  "tracking_no"
    t.integer  "contact_id"
    t.date     "po_date"
    t.date     "due_date"
    t.integer  "excise_duty"
    t.integer  "sales_com"
    t.integer  "order_status_id"
    t.integer  "product_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchase_orders", ["company_id"], name: "index_purchase_orders_on_company_id"
  add_index "purchase_orders", ["contact_id"], name: "index_purchase_orders_on_contact_id"
  add_index "purchase_orders", ["order_status_id"], name: "index_purchase_orders_on_order_status_id"
  add_index "purchase_orders", ["owner"], name: "index_purchase_orders_on_owner"
  add_index "purchase_orders", ["product_id"], name: "index_purchase_orders_on_product_id"
  add_index "purchase_orders", ["vendor_id"], name: "index_purchase_orders_on_vendor_id"

  create_table "quote_infos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quote_stages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_orders", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "potential_id"
    t.integer  "purchase_order_id"
    t.integer  "customer_no"
    t.date     "due_date"
    t.integer  "quote_id"
    t.integer  "contact_id"
    t.integer  "pending"
    t.integer  "exices_duty"
    t.integer  "order_status_id"
    t.integer  "sales_com"
    t.integer  "account_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales_orders", ["account_id"], name: "index_sales_orders_on_account_id"
  add_index "sales_orders", ["company_id"], name: "index_sales_orders_on_company_id"
  add_index "sales_orders", ["contact_id"], name: "index_sales_orders_on_contact_id"
  add_index "sales_orders", ["order_status_id"], name: "index_sales_orders_on_order_status_id"
  add_index "sales_orders", ["owner"], name: "index_sales_orders_on_owner"
  add_index "sales_orders", ["potential_id"], name: "index_sales_orders_on_potential_id"
  add_index "sales_orders", ["purchase_order_id"], name: "index_sales_orders_on_purchase_order_id"

  create_table "solution_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.date     "due_date"
    t.integer  "owner"
    t.integer  "task_category_id"
    t.integer  "task_status_id"
    t.integer  "priority_id"
    t.text     "notes"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["company_id"], name: "index_tasks_on_company_id"
  add_index "tasks", ["owner"], name: "index_tasks_on_owner"
  add_index "tasks", ["priority_id"], name: "index_tasks_on_priority_id"
  add_index "tasks", ["task_category_id"], name: "index_tasks_on_task_category_id"
  add_index "tasks", ["task_status_id"], name: "index_tasks_on_task_status_id"

  create_table "users", force: true do |t|
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vendors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
