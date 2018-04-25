class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :baneer_image
      t.text :description
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :vanue
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :event_type, foreign_key: true

      t.timestamps
    end
  end
end
