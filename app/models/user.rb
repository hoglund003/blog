class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  def full_name
    "#{first_name} #{last_name}"
  end

  def avatar_url
    "https://api.dicebear.com/7.x/initials/svg?radius=50&seed=#{full_name}"
  end
end
