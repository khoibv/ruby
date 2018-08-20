class UserValidator < ActiveModel::Validator

  # Override this method in subclasses with validation logic, adding errors
  # to the records +errors+ array where necessary.
  def validate(user)
    if user.acceptTos != '1'
      user.errors[:base] << "Ooops, you have to confirm Term of Service 123"
    end
  end

end


class User < ApplicationRecord

  belongs_to :department

  before_validation do

    self.acceptTos = :accept

  end


  # Validate using standard helpers
  validates :login_id, presence: true
  validates :name, presence: true
  # validates :department_id, presence: true
  validates :email,
            presence: true,
            length: {maximum: 100},
            format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "format is not valid", allow_blank: true}

  validates :acceptTos, acceptance: true

  validates :login_id,
            acceptance: { accept: '0', message: 'Please read Term of Service' },
            on: :create

  # Validate with private methods
  validate :assure_accept_tos, on: :create

  # Custom validate
  validates_with UserValidator, on: :create

  # validate do |user|
  #   if :accept == '0'
  #     user.errors[:base] << "Ooops, you have to confirm Term of Service"
  #   end
  # end


  # Private method to validate

  private

  def assure_accept_tos
    errors.add(:base, 'Ooops, you have to confirm Term of Service') if :accept == '0'
  end
end


