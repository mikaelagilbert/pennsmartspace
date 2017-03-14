# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  email         :string
#  password_hash :string
#  is_admin      :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class User < ActiveRecord::Base
  include BCrypt
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validate :is_admin
  has_many :rooms_users, dependent: :destroy
  has_many :favorites, through: :rooms_users, source: :room

  def password
    @password ||= Password.new(password_hash) if password_hash
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
  
  def forgot_password
    @user = User.find_by_email(params[:email])
    random_password = Array.new(10).map { (65 + rand(58)).chr }.join
    @user.password = random_password
    @user.save!
    Mailer.create_and_deliver_password_change(@user, random_password)
  end
end
