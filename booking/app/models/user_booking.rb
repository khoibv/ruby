class UserBooking < ApplicationRecord

  belongs_to :location

  validates_presence_of :from
  validates_presence_of :to

end
