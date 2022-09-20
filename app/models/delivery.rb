class Delivery < ApplicationRecord
  module STATUS
    PROCESSING = 0
  end

  def initial_status_change
    self.status = STATUS::PROCESSING
  end
end
