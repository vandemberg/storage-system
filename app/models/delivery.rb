class Delivery < ApplicationRecord
  validates :name, :address, :zip_code, :description, presence: true

  has_many :delivery_actions
end
