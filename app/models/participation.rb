# == Schema Information
#
# Table name: participations
#
#  id              :integer          not null, primary key
#  activity_id     :integer
#  participator_id :integer
#  accepted        :boolean
#  created_at      :datetime
#  updated_at      :datetime
#

class Participation < ActiveRecord::Base
  belongs_to :activity
  belongs_to :participator, class_name: "User"
end
