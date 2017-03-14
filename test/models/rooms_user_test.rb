# == Schema Information
#
# Table name: rooms_users
#
#  id         :integer          not null, primary key
#  room_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RoomsUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
