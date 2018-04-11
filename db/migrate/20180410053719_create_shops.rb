class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :cover_image
      t.references :owner, foreign_key: true
      t.references :business_type, foreign_key: true

      t.timestamps
    end
  end
end
