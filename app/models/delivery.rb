class Delivery < ApplicationRecord
  validates :name, :address, :zip_code, :description, presence: true
end
