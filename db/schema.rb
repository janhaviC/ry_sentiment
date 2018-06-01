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

ActiveRecord::Schema.define(version: 20180526112910) do

  create_table "advocacy_programs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.text "description"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "advocate_meta_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "advocate_id"
    t.integer "advocate_meta_name_id"
    t.integer "advocate_meta_name_value_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "meta_value"
  end

  create_table "advocate_meta_name_values", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "advocate_meta_name_id"
    t.text "meta_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "advocate_meta_names", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "meta_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "big_five_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "advocateId"
    t.string "bigFiveMain"
    t.float "bigFiveMainPerc", limit: 24
    t.float "openness", limit: 24
    t.float "conscientiousness", limit: 24
    t.float "extroversion", limit: 24
    t.float "agreeableness", limit: 24
    t.float "emotionalRange", limit: 24
    t.float "adventurousness", limit: 24
    t.float "artisticInterests", limit: 24
    t.float "emotionality", limit: 24
    t.float "imagination", limit: 24
    t.float "intellect", limit: 24
    t.float "authorityChallenging", limit: 24
    t.float "achievementStriving", limit: 24
    t.float "cautiousness", limit: 24
    t.float "dutifulness", limit: 24
    t.float "orderliness", limit: 24
    t.float "selfDiscipline", limit: 24
    t.float "selfEfficacy", limit: 24
    t.float "activityLevel", limit: 24
    t.float "assertiveness", limit: 24
    t.float "cheerfulness", limit: 24
    t.float "excitementSeeking", limit: 24
    t.float "outgoing", limit: 24
    t.float "gregariousness", limit: 24
    t.float "altruism", limit: 24
    t.float "cooperation", limit: 24
    t.float "modesty", limit: 24
    t.float "uncompromising", limit: 24
    t.float "sympathy", limit: 24
    t.float "trust", limit: 24
    t.float "fiery", limit: 24
    t.float "proneToWorry", limit: 24
    t.float "melancholy", limit: 24
    t.float "immoderation", limit: 24
    t.float "selfConsciousness", limit: 24
    t.float "susceptibleToStress", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "client_companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_id"
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "industry"
    t.string "industry_size"
    t.text "geography"
    t.string "phone_number"
    t.string "website"
    t.datetime "account_start_date"
    t.datetime "account_renewal_date"
    t.text "solution_used"
    t.string "account_owner"
    t.string "logo"
  end

  create_table "client_company_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_company_id"
    t.string "first_name"
    t.string "last_name"
    t.string "am_email"
    t.string "email"
    t.string "csm_email"
    t.boolean "is_active", default: true
    t.boolean "is_new_user", default: false
    t.boolean "can_contact", default: true
    t.boolean "referencible", default: true
    t.string "hashid"
    t.boolean "is_promoter", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "can_send_email_notification", default: true
    t.boolean "can_send_inapp_notification", default: true
    t.boolean "can_send_sms_notification", default: true
    t.string "am_first_name"
    t.string "am_last_name"
    t.string "csm_first_name"
    t.string "csm_last_name"
    t.integer "last_nps_score"
    t.text "designation"
    t.text "gmail_auth_token"
    t.string "mobile"
    t.text "linkedin_link"
    t.text "about"
    t.string "avatar"
    t.string "product_name"
    t.string "am_phone"
    t.string "csm_phone"
    t.integer "no_of_active_referrals", default: 0
    t.integer "no_of_active_pending_tasks", default: 0
    t.boolean "g2crowd_reviewed", default: false
  end

  create_table "client_company_user_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_company_contact_id"
    t.integer "client_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_id"
    t.text "embed_api_key"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_id"
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "role_id"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.string "company_name"
    t.text "description"
    t.string "subdomain"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "logo"
    t.boolean "live", default: true
    t.string "fb_page_name"
    t.text "fb_page_token"
    t.integer "fb_connect_user_id"
    t.string "page_id"
    t.text "fb_page_url"
    t.text "api_token"
  end

  create_table "company_meta_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_company_id"
    t.integer "company_meta_name_id"
    t.integer "company_meta_name_value_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "meta_value"
  end

  create_table "company_meta_name_values", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "company_meta_name_id"
    t.text "meta_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_meta_names", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text "meta_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_activities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "contact_id"
    t.string "activity_type"
    t.string "activity_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_advocacy_programs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "advocacy_program_id"
    t.integer "contact_id"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "address_1"
    t.string "address_2"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.string "state"
    t.datetime "product_join_at"
    t.datetime "product_login_at"
    t.datetime "ry_start_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_motivations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "motivation_id"
    t.integer "contact_id"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_references", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "contact_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "mobile"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "contact_task_id"
  end

  create_table "contact_referral_leads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "contact_id"
    t.integer "lead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_sources", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_survey_task_feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_company_contact_id"
    t.integer "contact_task_id"
    t.integer "rating_count"
    t.integer "task_id"
    t.text "rating_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_task_feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_company_contact_id"
    t.integer "contact_task_id"
    t.integer "rating_count"
    t.integer "task_id"
    t.text "rating_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_task_queries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "task_id"
    t.integer "contact_id"
    t.string "subject"
    t.text "description"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "task_id"
    t.integer "contact_id"
    t.integer "ignored_count"
    t.integer "no_response_count"
    t.integer "auto_no_response_reminder_count"
    t.integer "last_ignore_no_response_reminder_count"
    t.integer "priority", default: 1
    t.boolean "is_active", default: true
    t.string "status"
    t.datetime "ignored_at"
    t.datetime "last_no_response_remind_at"
    t.datetime "last_ignore_remind_at"
    t.datetime "last_auto_no_response_reminder_at"
    t.datetime "last_ignore_no_response_reminder_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "waited_at"
    t.datetime "run_at"
    t.string "hashid"
    t.integer "cycle_number"
    t.text "reference_response_comment"
    t.text "reference_response_remainder_comment"
    t.datetime "reference_accpted_at"
    t.datetime "reference_completed_at"
    t.integer "reference_accpted_reminded", default: 0
    t.text "reference_comment"
    t.boolean "share_fb", default: false
    t.boolean "share_twitter", default: false
    t.boolean "share_linkedin", default: false
    t.boolean "share_whatsapp", default: false
    t.boolean "share_email", default: false
    t.index ["hashid"], name: "index_contact_tasks_on_hashid", unique: true
  end

  create_table "contact_video_interviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "contact_id"
    t.integer "task_id"
    t.string "file"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_video_testimonals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "contact_id"
    t.integer "task_id"
    t.string "file"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "feedback_id"
    t.integer "customer_id"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dashboard_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "voice_of_customer_count_today"
    t.integer "voice_of_customer_count_week"
    t.integer "voice_of_customer_count_month"
    t.integer "voice_of_customer_count_overall"
    t.integer "referrals_count_today"
    t.integer "referrals_count_week"
    t.integer "referrals_count_month"
    t.integer "referrals_count_overall"
    t.integer "advocate_count_today"
    t.integer "advocate_count_week"
    t.integer "advocate_count_month"
    t.integer "advocate_count_overall"
    t.integer "promoter_start_point_overall"
    t.integer "passive_start_point_overall"
    t.integer "detractor_start_point_overall"
    t.integer "promoter_count_overall"
    t.integer "passive_count_overall"
    t.integer "detractor_count_overall"
    t.integer "promoter_start_point_latest"
    t.integer "passive_start_point_latest"
    t.integer "detractor_start_point_latest"
    t.integer "promoter_count_latest"
    t.integer "passive_count_latest"
    t.integer "detractor_count_latest"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facebook_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_company_contact_id"
    t.text "token"
    t.text "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facebook_page_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.bigint "reviewer_id"
    t.float "rating", limit: 24
    t.text "review_text"
    t.datetime "review_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "advocate_id"
  end

  create_table "feedback_negative_texts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_active", default: true
  end

  create_table "feedback_positive_texts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_active", default: true
  end

  create_table "feedback_scale_rules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.integer "feedback_scale_id"
    t.boolean "is_active", default: true
    t.string "scale_rule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedback_scales", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "scale"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.text "description"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g2crowd_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "contact_id"
    t.string "company"
    t.float "score", limit: 24
    t.string "review_date"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "linkedin_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "client_company_contact_id"
    t.text "token"
    t.text "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motivations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.text "description"
    t.text "thanks_message"
    t.string "image"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mq_survey_answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "contact_task_id"
    t.integer "multiple_question_survey_id"
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_task_id"], name: "index_mq_survey_answers_on_contact_task_id"
  end

  create_table "mq_survey_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.float "weightage", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status", default: true
  end

  create_table "mqs_answer_options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "multiple_question_survey_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mqs_label_answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "mq_survey_answer_id"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "multiple_question_surveys", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "task_id"
    t.string "question"
    t.boolean "need_rating"
    t.boolean "need_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mq_survey_category_id"
    t.string "answer_type"
    t.integer "scale"
    t.string "shape"
    t.index ["mq_survey_category_id"], name: "index_multiple_question_surveys_on_mq_survey_category_id"
  end

  create_table "multiple_survey_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "task_id"
    t.string "question"
    t.boolean "need_rating", default: true
    t.boolean "need_comment", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_multiple_survey_contacts_on_task_id"
  end

  create_table "needs_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "advocateId"
    t.string "needsMain"
    t.float "needsMainPerc", limit: 24
    t.float "structure", limit: 24
    t.float "stability", limit: 24
    t.float "selfExpression", limit: 24
    t.float "practicality", limit: 24
    t.float "love", limit: 24
    t.float "liberty", limit: 24
    t.float "ideal", limit: 24
    t.float "harmony", limit: 24
    t.float "excitement", limit: 24
    t.float "curiosity", limit: 24
    t.float "closeness", limit: 24
    t.float "challenge", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opportunities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opportunity_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text "contact_name"
    t.text "contact_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "privileges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.boolean "can_view"
    t.boolean "can_edit"
    t.boolean "can_delete"
    t.boolean "can_create"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "advocateId"
    t.text "sourceFile"
    t.string "bigFiveMain"
    t.float "bigFiveMainPerc", limit: 24
    t.string "needsMain"
    t.float "needsMainPerc", limit: 24
    t.string "valuesMain"
    t.float "valuesMainPerc", limit: 24
    t.text "categorization"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referral_engagement_email_shares", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "contact_task_id"
    t.integer "social_network_share_id"
    t.text "email"
    t.text "message"
    t.text "subject"
    t.text "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referral_engagement_posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "post_type"
    t.string "attach"
    t.text "caption"
    t.integer "task_id"
    t.text "link"
    t.text "image_link"
    t.text "description"
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "share_fb_count", default: 0
    t.integer "share_twitter_count", default: 0
    t.integer "share_linkedin_count", default: 0
    t.integer "share_whatsapp_count", default: 0
    t.integer "share_email_count", default: 0
    t.text "user_description"
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.text "description"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ry_client_companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "ry_client_id"
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "industry"
    t.string "industry_size"
    t.text "geography"
    t.string "phone_number"
    t.string "website"
    t.datetime "account_start_date"
    t.datetime "account_renewal_date"
    t.text "solution_used"
    t.string "account_owner"
    t.string "logo"
  end

  create_table "ry_client_company_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "ry_client_company_id"
    t.string "csm_email"
    t.string "am_email"
    t.string "email"
    t.string "first_name"
    t.boolean "is_active"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "am_first_name"
    t.string "am_last_name"
    t.string "csm_first_name"
    t.string "csm_last_name"
    t.text "designation"
    t.text "gmail_auth_token"
    t.string "mobile"
    t.text "linkedin_link"
    t.text "about"
    t.string "avatar"
    t.string "product_name"
    t.string "am_phone"
    t.string "csm_phone"
    t.boolean "can_send_email_notification", default: true
    t.boolean "can_send_inapp_notification", default: true
    t.boolean "can_send_sms_notification", default: true
    t.integer "no_of_active_referrals", default: 0
    t.integer "no_of_active_pending_tasks", default: 0
  end

  create_table "ry_client_company_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "ry_client_id"
    t.integer "ry_client_company_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ry_clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "company_name"
    t.string "description"
    t.string "email"
    t.boolean "is_active"
    t.string "name"
    t.string "subdomain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "live", default: true
  end

  create_table "ry_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.text "description"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sentiments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "interaction_no"
    t.bigint "advocate_id", null: false
    t.text "url", null: false
    t.string "status", default: "new", null: false
    t.decimal "score", precision: 10
    t.decimal "magnitude", precision: 10
    t.decimal "sentiment", precision: 10
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["advocate_id"], name: "fk"
  end

  create_table "social_network_shares", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "contact_task_id"
    t.integer "referral_engagement_post_id"
    t.boolean "share_fb"
    t.boolean "share_twitter"
    t.boolean "share_linkedin"
    t.boolean "share_whatsapp"
    t.boolean "share_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "share_fb_count", default: 0
    t.integer "share_twitter_count", default: 0
    t.integer "share_linkedin_count", default: 0
    t.integer "share_whatsapp_count", default: 0
    t.integer "share_email_count", default: 0
  end

  create_table "task_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_conference_invites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "task_id"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_conferences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "task_id"
    t.string "name"
    t.date "conference_start_date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "conference_location"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "task_id"
    t.integer "feedback_scale"
    t.integer "feedback_positive_text_id"
    t.integer "feedback_negative_text_id"
    t.integer "feedback_start_with"
    t.string "shape"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_notification_days", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_notification_months", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "task_category_id"
    t.string "name"
    t.string "title"
    t.string "auto_send_type"
    t.string "send_as"
    t.string "hashid"
    t.text "description"
    t.integer "feedback_id"
    t.integer "stop_reminder_at"
    t.boolean "send_to_new_customer", default: true
    t.boolean "send_reminder_to_ignored_user", default: true
    t.integer "client_user_id"
    t.boolean "schedule_later", default: false
    t.datetime "last_recurring_task_create_at"
    t.datetime "schedule_date"
    t.datetime "start_date"
    t.datetime "last_periodic_recurring_task_create_at"
    t.datetime "expire_at"
    t.boolean "is_active", default: true
    t.boolean "is_send_as", default: true
    t.boolean "is_periodic_recurring", default: false
    t.boolean "auto_send", default: true
    t.boolean "is_recurring", default: true
    t.integer "new_customer_notification_day_id"
    t.integer "new_customer_notification_month_id"
    t.integer "ignore_reminder_notification_day_id"
    t.integer "ignore_reminder_notification_month_id"
    t.integer "recurring_notification_day_id"
    t.integer "no_response_notification_day_id"
    t.integer "recurring_notification_month_id"
    t.integer "periodic_recurring_notification_day_id"
    t.integer "periodic_recurring_notification_month_id"
    t.integer "no_response_notification_month_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.integer "cycle_count"
    t.boolean "enable_custom_nps_score", default: false
    t.integer "custom_nps_score_gt", default: 0
    t.boolean "enable_periodic_nps_score", default: false
    t.integer "periodic_nps_score_gt", default: 0
    t.boolean "enable_nps_based_nps_score", default: false
    t.integer "nps_based_nps_score_gt", default: 0
    t.integer "no_of_nps_promoter", default: 0
    t.integer "no_of_nps_passive", default: 0
    t.integer "no_of_nps_detractor", default: 0
    t.integer "no_of_referral_references", default: 0
    t.integer "no_of_contact_tasks", default: 0
    t.integer "no_of_completed_contacts", default: 0
    t.string "last_activity_time"
    t.float "last_cycle_response_percentage", limit: 24
    t.datetime "last_cycle_date"
    t.boolean "reference_reminder", default: true
    t.integer "reference_notification_day_id"
    t.integer "reference_notification_month_id"
    t.datetime "reference_notification_created_at"
    t.datetime "reference_notification_updated_at"
    t.integer "opportunity_id"
    t.integer "opportunity_contact_id"
    t.integer "preloaded_send_contacts_count"
    t.boolean "is_sent_to_contacts", default: false
    t.text "preload_contact_ids"
    t.datetime "reference_accpted_at"
    t.datetime "reference_completed_at"
    t.integer "reference_accpted_reminded", default: 0
    t.string "enable_api_based_type"
    t.integer "api_based_nps_score_gt", default: 0
    t.index ["created_at"], name: "index_tasks_on_created_at"
  end

  create_table "track_open_social_networks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "open_fb", default: 0
    t.integer "integer"
    t.integer "open_twitter", default: 0
    t.integer "open_linkedin", default: 0
    t.integer "open_whatsapp", default: 0
    t.integer "open_email", default: 0
    t.integer "open_all_count", default: 0
    t.integer "contact_task_id"
    t.integer "referral_engagement_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "open_copy", default: 0
  end

  create_table "twitter_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text "token"
    t.text "uid"
    t.text "consumer_key"
    t.text "consumer_secret"
    t.text "access_token_secret"
    t.integer "client_company_contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "ry_role_id"
    t.integer "ry_client_id"
    t.integer "ry_client_company_user_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "phone_number"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "values_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "advocateId"
    t.string "valuesMain"
    t.float "valuesMainPerc", limit: 24
    t.float "selfTranscendence", limit: 24
    t.float "selfEnhancement", limit: 24
    t.float "hedonism", limit: 24
    t.float "opennessToChange", limit: 24
    t.float "conservation", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "mq_survey_answers", "contact_tasks"
  add_foreign_key "multiple_question_surveys", "mq_survey_categories"
  add_foreign_key "multiple_survey_contacts", "tasks"
  add_foreign_key "sentiments", "client_company_contacts", column: "advocate_id", name: "fk", on_update: :cascade, on_delete: :cascade
end
