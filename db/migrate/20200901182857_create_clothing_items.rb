class CreateClothingItems < ActiveRecord::Migration[6.0]
  def change
    create_table :clothing_items do |t|
      t.string :name
      t.integer :price
      t.timestamps
    end
  end
end
