class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :Admin
      t.string :title
      t.text :description
      t.string :image_url
      t.string :price
      t.datetime :date_available

      t.timestamps
    end
  end
end
