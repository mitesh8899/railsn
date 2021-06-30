class Cart < ApplicationRecord
  has_many :line_items

  def self.add_product(product_id)
    current_item = current_item.find_by(product_id)
    if current_item
        current_item.quantity += 1
    else
        current_item = line_items.build(product_id: product_id)
    end
    current_item
  end

 
end
