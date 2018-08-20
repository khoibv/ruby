class Todo < ApplicationRecord

  validates :todo, length: {maximum: 100}

end
