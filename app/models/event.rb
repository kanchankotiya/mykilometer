class Event < ApplicationRecord
  belongs_to :event_type, optional: true
  has_many :event_tickets, inverse_of: :event, dependent: :destroy
  accepts_nested_attributes_for :event_tickets, reject_if: :all_blank, allow_destroy: true
  mount_uploader :baneer_image,  ImageUploader
  has_many :vendors
  geocoded_by :address
  after_validation :geocode
  validates :name, :baneer_image, :description,  :start_datetime, :end_datetime, :vanue, :address, presence: true
end
