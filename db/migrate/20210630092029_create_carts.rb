class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|

      t.timestamps
    end
    add_foreign_key :line_items, :carts
  end
end
