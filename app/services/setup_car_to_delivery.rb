class SetupCarToDelivery
  def execute(delivery, car)
    raise CarNotFound if car.blank?

    if car.blank?
      delivery.unvailable_car!
      delivery.save

      return
    end

    delivery.delivery_actions.create({
      car_id: car.id,
      estimated_at: Date.today + 4.days,
    })
  end

  def self.setup(delivery_id)
    delivery = Delivery.find(delivery_id)
    car = ChooseCarAvailable.new.choose

    setup_car_delivery = SetupCarToDelivery.new
    setup_car_delivery.execute(delivery, car)
  rescue CarNotFound
    Rails.logger.info "No car available..."
  end
end
