class BusinessType < ApplicationRecord
  has_many :shops, dependent: :destroy
end
