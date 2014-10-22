class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
