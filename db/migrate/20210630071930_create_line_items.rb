class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :unit_price
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :cart

      t.timestamps
    end
  end
end
