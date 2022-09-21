class Car < ApplicationRecord
  validates :name, presence: true

  enum status: { available: 0, unavailable: 1 }
end
