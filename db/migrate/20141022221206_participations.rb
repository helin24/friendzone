class Participations < ActiveRecord::Migration
  def change
    t.integer :activity_id
    t.integer :user_id
    t.boolean :accepted

    t.timestamps
  end
end
