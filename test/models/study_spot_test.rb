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

require 'test_helper'

class StudySpotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
