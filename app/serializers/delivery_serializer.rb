class DeliverySerializer
  include SerializerInterface

  def initialize(delivery)
    @delivery = delivery
  end

  def serialize
    {
      name: @delivery.name,
      zip_code: @delivery.zip_code,
      description: @delivery.description,
      adderss: @delivery.address,
      status: status,
    }
  end

  private

  def status
    delivery_action = @delivery.delivery_actions.last
    return 'searching_car' if delivery_action.blank?

    delivery_action.status
  end
end
