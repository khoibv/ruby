class User < ApplicationRecord

  belongs_to :department


  validates :login_id, presence: true
  validates :name, presence: true
  validates :email, presence: true

  validate do |user|
    if :accept == '0'
      user.errors[:base] << "Ooops, you have to confirm Term of Service"
    end
  end

end


class UserValidator < ActiveModel::Validator

  # Override this method in subclasses with validation logic, adding errors
  # to the records +errors+ array where necessary.
  def validate(user)
    if record.accept == '0'
      record.errors[:base] << "Ooops, you have to confirm Term of Service 123"
    end
  end

end
