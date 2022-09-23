class DeliveryAction < ApplicationRecord
  belongs_to :car
  belongs_to :delivery

  enum status: { packing: 0, processing: 1, fineshed: 2, canceled: 3, failed: 4 }
end
