class CreateCals < ActiveRecord::Migration
  def change
    create_table :cals do |t|
      t.date :date
      t.string :from, :to, :where_to_buy, :description
      t.integer :price, :from_value, :to_value, :initail_value, :final_value
      t.timestamps
    end
  end
end
