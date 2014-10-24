# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  creator_id  :integer
#  location_id :integer
#  slots       :integer
#  price       :integer
#  starts_at   :datetime
#  ends_at     :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

class Activity < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  belongs_to :location
  has_many :participations
  has_many :participators, through: :participations
end
