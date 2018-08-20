class User < ApplicationRecord

  validates :name, length: {maximum: 50}, presence: true
  validates :address, length: {maximum: 250}, presence: true

end
