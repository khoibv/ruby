class User < ApplicationRecord

  has_many :todos




  validates :name, length: {maximum: 50}, presence: {message: :name_is_empty}
  validates :address, length: {maximum: 250}, presence: true

end
