class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :rate, null: false, foreign_key: true
      t.references :clothing_item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
