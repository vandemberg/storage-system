class DeliveriesController < ApplicationController
  def create
    delivery = Delivery.new(delivery_params)
    delivery.initial_status

    render(json: delivery, status: :created) if delivery.save

    render(json: delivery.errors, status: :unprocessable_entity)
  end

  private

  def delivery_params
    params.require(:delivery).permit(:name, :description, :address, :zip_code, :estimated_time)
  end
end
