class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :items, :type, :kind
  end
end
