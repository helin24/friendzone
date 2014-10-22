class Locations < ActiveRecord::Migration
  def change
    t.string :name
    t.string :address
    t.string :address_2
    t.string :city
    t.string :state
    t.string :zip

    t.timestamps
  end
end
