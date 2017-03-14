# == Schema Information
#
# Table name: buildings
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# should it store hours?
class Building < ActiveRecord::Base
  validates :name, presence: true
  has_many :rooms

  def self.search(search)
    where("name LIKE ?", "%#{search}")
  end
end
