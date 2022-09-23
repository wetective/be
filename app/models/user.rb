class User < ApplicationRecord
  has_many :tips
  validates :email, presence: true, uniqueness: true
  has_secure_password

  def self.find_or_create_user(data)
    user = User.find_or_create_by(email: data[:email]) do |user|
      user.email = data[:email]
      user.password ||= data[:password]
    end
  end

  def self.find_user(data)
    User.find_by(email: data[:email])
  end
end
