class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :contact1
      t.string :contact2
      t.string :email
      t.string :address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
