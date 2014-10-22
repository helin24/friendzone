class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
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
end
