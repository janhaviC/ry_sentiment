class CreateSentiments < ActiveRecord::Migration[5.1]
  def change
    create_table :sentiments do |t|
      t.integer :interaction_no, :unique=>true
      t.integer :advocate_id, :null=>false
      t.text :url, :null=>false
      t.string :status, :null=>false, :default =>'new'
      t.decimal :score
      t.decimal :magnitude
      t.decimal :sentiment
      t.text :detail

      t.timestamps
    end
  end
end
