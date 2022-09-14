class Tip < ApplicationRecord
  belongs_to :user

  validates_presence_of :uid,
                        :location,
                        :date,
                        :time,
                        :description
  end
