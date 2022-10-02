class SetupCarTodelivery
  def execute(delivery, car)
    raise Exceptions::CarNotFound if car.blank?
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

    setup_car_delivery = SetupCarTodelivery.new
    setup_car_delivery.execute(delivery, car)
  rescue Exceptions::CarNotFound
    # Alert if the delivery was created with more than 5.days
  end
end
