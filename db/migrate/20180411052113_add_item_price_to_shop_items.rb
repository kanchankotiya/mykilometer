class AddItemPriceToShopItems < ActiveRecord::Migration[5.1]
  def change
    add_column :shop_items, :item_price, :string
  end
end
