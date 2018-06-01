class Fk < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :sentiments , :client_company_contacts, column:  :advocate_id, foreign_key: :client_company_contact_id, on_delete: :cascade , on_update: :cascade, name: :fk
  end
end
