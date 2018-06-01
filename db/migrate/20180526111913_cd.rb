class Cd < ActiveRecord::Migration[5.1]
  def change
  	change_table :sentiments do |t|
    	t.change :advocate_id, :bigint
    end
  end
end
