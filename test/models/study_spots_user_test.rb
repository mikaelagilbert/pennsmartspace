# == Schema Information
#
# Table name: study_spots_users
#
#  id            :integer          not null, primary key
#  study_spot_id :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class StudySpotsUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
