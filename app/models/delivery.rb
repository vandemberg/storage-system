class Delivery < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true
  validates :description, presence: true

  def initial_status_change!
    self.processing!
  end
end
