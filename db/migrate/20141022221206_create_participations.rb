class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :activity_id
      t.integer :participator_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
