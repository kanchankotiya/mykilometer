class CreateShopItems < ActiveRecord::Migration[5.1]
  def change
    create_table :shop_items do |t|
      t.string :item_name
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
