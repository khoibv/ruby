class Location < ApplicationRecord

  has_many :user_bookings


  validates :name, presence: true

end
