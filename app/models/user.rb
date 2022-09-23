class User < ApplicationRecord
  has_many :tips
  validates :email, presence: true, uniqueness: true
  has_secure_password

  def self.find_or_create_user(data)
    user = User.find_by(email: data[:email])
    if !user.present?
      user = User.create!(email: data[:email], password: data[:password], password_confirmation: data[:password_confirmation])
    else
      user = user.authenticate!(data[:password])
      require 'pry'; binding.pry 
    end
    user
    require 'pry'; binding.pry 
  end
end
