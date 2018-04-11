class Owner < ApplicationRecord
  has_many :shops, dependent: :destroy
  accepts_nested_attributes_for :shops, reject_if: :all_blank, allow_destroy: true
end
