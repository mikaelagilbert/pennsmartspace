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

class RoomsUser < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
end
