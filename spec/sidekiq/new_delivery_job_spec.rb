require 'rails_helper'
RSpec.describe NewDeliveryJob, type: :job do
  it "can't found a car to deliry" do
    delivery = create(:delivery)

    NewDeliveryJob.new.perform(delivery.id)
    delivery.reload

    expect(delivery.delivery_actions.count).to eq(0)
  end

  it "Can found a car and create a new delivery" do
    create(:car)
    delivery = create(:delivery)

    NewDeliveryJob.new.perform(delivery.id)
    delivery.reload

    expect(delivery.delivery_actions.count).to eq(1)
  end
end
