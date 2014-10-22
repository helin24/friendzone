class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :facebook_id
      t.string :google_id
      t.string :twitter_id
    end
  end
end