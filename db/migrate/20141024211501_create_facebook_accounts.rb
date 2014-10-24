class CreateFacebookAccounts < ActiveRecord::Migration
  def change
    create_table :facebook_accounts do |t|
    	t.string :name
    	t.string :gender
    	t.integer :timezone
    	t.string :image
    	t.references :user, index: true

      t.timestamps
    end
  end
end
