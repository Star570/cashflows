class CreateCashflows < ActiveRecord::Migration
  def change
    create_table :cashflows do |t|
      t.date :date
      t.string :from_item, :to_item
      t.integer :price
      t.text :description 	
      t.timestamps
    end
  end
end
