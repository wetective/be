class User < ApplicationRecord
  has_many :tips

  validates :email, presence: true, uniqueness: true

  # validates_presence_of :first_name, 
  #                       :last_name, 
  #                       :phone,
  #                       # :city,
  #                       # :state,
  #                       # :password_digest

  def self.oauth_user(data)
    user = User.find_or_create_by(email: data[:email]) do |user|
      user.first_name = data[:name]
      user.email = data[:email]
    end
  end
end
