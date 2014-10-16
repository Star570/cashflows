class ChangeColumnName2 < ActiveRecord::Migration
  def change
  	rename_column :cals, :initail_value, :initial_value
  end
end
