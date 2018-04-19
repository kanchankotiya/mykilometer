class Shop < ApplicationRecord
  belongs_to :owner, optional: true
  belongs_to :business_type, optional: true
  has_many :shop_items, dependent: :destroy
  mount_uploader :cover_image,  ImageUploader
  
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
