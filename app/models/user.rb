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
  has_many :participations, foreign_key: :participator_id
  has_many :created_activities, class_name: "Activity", foreign_key: :creator_id
  has_many :participated_activities, through: :participations, source: :activity

  def self.from_omniauth(auth)
  	puts "auth is #{auth}"
  end
end
