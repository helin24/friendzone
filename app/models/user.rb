# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  facebook_id     :string(255)
#  google_id       :string(255)
#  twitter_id      :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_secure_password
  has_one :facebook_account
  has_many :participations, foreign_key: :participator_id
  has_many :created_activities, class_name: "Activity", foreign_key: :creator_id
  has_many :participated_activities, through: :participations, source: :activity

  def self.from_omniauth(auth)
  	user_info = auth.extra.raw_info
  	facebook_account = FacebookAccount.find_by_id(auth.uid)
  	puts "facebook_account is #{facebook_account}"
  	if facebook_account
  		facebook_account.user
  	else
  		new_facebook_account = FacebookAccount.create(name: user_info.name, gender: user_info.gender, timezone: user_info.timezone, image: user_info.image)
  		puts "errors after creation are #{new_facebook_account.errors.inspect}"
  		new_facebook_account.id = auth.uid
  		puts "errors after changing id are #{new_facebook_account.errors.inspect}"
  		user = self.create(name: user_info.name, email: user_info.email, password: "password")
  		new_facebook_account.user = user
  		new_facebook_account.save
  	end
  	# find facebook account
  	# if exists then return that
  	# else create facebook account and create user
  end
end
