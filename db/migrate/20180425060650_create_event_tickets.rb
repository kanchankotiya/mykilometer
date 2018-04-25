class CreateEventTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :event_tickets do |t|
      t.string :price
      t.string :name
      t.datetime :sales_start_date
      t.datetime :sales_end_date
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
