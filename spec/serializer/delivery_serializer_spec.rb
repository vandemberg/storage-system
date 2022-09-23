# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DeliverySerializer do
  describe "Serializer delivery" do
    it "Checking delivery status types" do
      delivery = create(:delivery)
      delivery_serializer = DeliverySerializer.new(delivery)

      expect(delivery_serializer.serialize).to include({
        name: delivery.name,
        status: 'searching_car',
      })
    end
  end
end
