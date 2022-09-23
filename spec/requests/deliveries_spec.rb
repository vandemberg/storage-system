require 'rails_helper'

RSpec.describe "Deliveries", type: :request do
  describe "POST /api/v1/deliveries" do
    before(:each) do
      create(:car)
    end

    let(:delivery_params) {
      {
        delivery: build(:delivery).attributes
      }
    }

    context "with valid data" do
      it "Should create a new delivery" do
        total_deliveries = Delivery.count

        post("/api/v1/deliveries", params: delivery_params)
        data = JSON.parse(response.body)

        expect(response).to have_http_status(:created)
        expect(data['delivery']['name']).to eq(delivery_params[:delivery]['name'])
        expect(data['delivery']['status']).to eq('packing')
        expect(Delivery.count).to eq(total_deliveries + 1)
      end
    end

    context "with invalid data" do
      it "without data" do
        post("/api/v1/deliveries")
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it "without empty values" do
        invalid_params = delivery_params
        invalid_params[:delivery]['name'] = nil

        post("/api/v1/deliveries", params: invalid_params)

        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
