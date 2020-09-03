class CreateSizeCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :size_charts do |t|
      t.references :clothing_item, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true

      t.timestamps
    end
  end
end
