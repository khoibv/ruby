class User < ApplicationRecord

  validates :name, length: {maximum: 50}

end
