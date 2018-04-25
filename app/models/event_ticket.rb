class EventTicket < ApplicationRecord
  belongs_to :event, optional: true
  validates :price, :name, :sales_start_date, :sales_end_date,  presence: true
end
