class ShopItem < ApplicationRecord
  belongs_to :shop, optional: true
end
