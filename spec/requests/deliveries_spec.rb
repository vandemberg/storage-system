require 'rails_helper'

RSpec.describe "Deliveries", type: :request do
  describe "POST /api/v1/deliveries" do
    let(:delivery_params) {
      {
        delivery: build(:delivery).attributes
      }
    }

    it "Should create a new delivery" do
      total_deliveries = Delivery.count

      post("/api/v1/deliveries", params: delivery_params)
      data = JSON.parse(response.body)

      expect(data['delivery']['name']).to eq(delivery_params[:delivery]['name'])
      expect(data['delivery']['status']).to eq('searching_car')
      expect(response).to have_http_status(:created)
      expect(Delivery.count).to eq(total_deliveries + 1)
    end
  end
end
