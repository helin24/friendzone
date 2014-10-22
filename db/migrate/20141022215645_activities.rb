class Activities < ActiveRecord::Migration
  def change
    t.string :title
    t.string :description
    t.integer :creator_id
    t.integer :location_id
    t.integer :slots
    t.integer :price
    t.datetime :starts_at
    t.datetime :ends_at

    t.timestamps
  end
end
