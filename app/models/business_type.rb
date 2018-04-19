class BusinessType < ApplicationRecord
  has_many :shops, dependent: :destroy
  mount_uploader :business_icon,  ImageUploader
end
