class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type, :item_name
      t.integer :initial_price, :balanced_price
      t.boolean :hind, :show
      t.timestamps
    end
  end
end
