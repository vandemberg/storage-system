module Api
  module V1
    class DeliveriesController < ApplicationController
      before_action :empty_params, only: [:create]

      def create
        delivery = Delivery.new(delivery_params)
        car = ChooseCarAvailable.new.choose

        raise CarNotFound.new if car.blank?

        if delivery.save
          delivery.delivery_actions.create({
            car_id: car.id,
            estimated_at: Date.today + 4.days,
          })

          serializer = DeliverySerializer.new(delivery)
          return render(json: { delivery: serializer.serialize }, status: :created)
        end

        render(json: { errors: delivery.errors }, status: :unprocessable_entity)
      rescue CarNotFound
        render(json: { errors: ["Não temos um carro disponível"], status: :unprocessable_entity })
      end

      private

      def delivery_params
        params.required(:delivery).permit(:name, :address, :zip_code, :description)
      end

      def empty_params
        return if params[:delivery].present?

        render({ json: { errors: ['missing param delivery'] }, status: :unprocessable_entity })
      end
    end
  end
end
