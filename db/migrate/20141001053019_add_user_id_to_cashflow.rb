class AddUserIdToCashflow < ActiveRecord::Migration
  def change
  	add_column :cashflows, :user_id, :integer 
  	add_index :cashflows, :user_id
  	
  end
end
