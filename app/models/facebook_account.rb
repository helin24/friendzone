# == Schema Information
#
# Table name: facebook_accounts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  gender     :string(255)
#  timezone   :integer
#  image      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_facebook_accounts_on_user_id  (user_id)
#

class FacebookAccount < ActiveRecord::Base
	belongs_to :user
end
