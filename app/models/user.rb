class User < ApplicationRecord
  has_many :tips

  validates_presence_of :first_name, 
                        # :last_name, 
                        # :phone,
                        :email,
                        # :city,
                        # :state,
                        :password_digest

  has_secure_password

  validates_uniqueness_of :email
end
