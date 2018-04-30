class AddVendorRefToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :vendor, foreign_key: true
  end
end
