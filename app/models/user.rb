class User < ApplicationRecord
  has_many :tips

  validates_presence_of :email
  # validates_presence_of :first_name, 
  #                       :last_name, 
  #                       :phone,
  #                       # :city,
  #                       # :state,
  #                       # :password_digest

  validates_uniqueness_of :email

  def self.oauth_user(data)
    user = User.find_or_create_by(email: data[:email]) do |user|
      user.first_name = data[:name]
      user.email = data[:email]
    end
  end
end
