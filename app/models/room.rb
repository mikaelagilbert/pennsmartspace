# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  name        :string
#  building_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Room < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  belongs_to :building
  has_many :study_spots
  has_many :rooms_users
  has_many :users, through: :rooms_users
end
