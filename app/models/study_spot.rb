# == Schema Information
#
# Table name: study_spots
#
#  id         :integer          not null, primary key
#  is_open    :boolean          default(TRUE)
#  arduino_id :string
#  room_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StudySpot < ActiveRecord::Base
  validates :is_open, presence: true
  belongs_to :room
  has_many :usage_times

  #after_commit { UpdateRelayJob.perform_later(self) }
  # after_update
end
