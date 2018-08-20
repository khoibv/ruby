class Todo < ApplicationRecord

  belongs_to :user
  validates :todo, length: {maximum: 100}, presence: true

end
