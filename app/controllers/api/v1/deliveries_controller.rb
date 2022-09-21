module Api
  module V1
    class DeliveriesController < ApplicationController
      def create
        delivery = Delivery.new(delivery_params)

        if delivery.save!
          serializer = DeliverySerializer.new(delivery)
          render(json: { delivery: serializer.serialize }, status: :created)
        else
          render(json: { errors: delivery.errors }, stauts: :unprocessable_entity)
        end
      end

      private

      def delivery_params
        params.required(:delivery).permit(:name, :address, :zip_code, :description)
      end
    end
  end
end
