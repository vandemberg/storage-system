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
    'searching_car'
  end
end
