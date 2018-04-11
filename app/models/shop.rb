class Shop < ApplicationRecord
  belongs_to :owner, optional: true
  belongs_to :business_type, optional: true
  has_many :shop_items, dependent: :destroy
end
