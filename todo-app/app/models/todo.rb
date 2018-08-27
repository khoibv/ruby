class Todo < ApplicationRecord

  belongs_to :user
  scope :completed, -> {where(status: true)}
  scope :by_user, ->(username) {where(user_id: User.find_by(name: username))}

  validates :todo, length: {maximum: 100}, presence: true

end
