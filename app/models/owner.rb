class Owner < ApplicationRecord
  has_many :shops, dependent: :destroy
end
