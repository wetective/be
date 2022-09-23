class Tip < ApplicationRecord
  belongs_to :user

  validates_presence_of :uid,
                        :location,
                        :description
  end
