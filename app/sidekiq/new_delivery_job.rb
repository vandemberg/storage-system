class NewDeliveryJob
  include Sidekiq::Job

  def perform(deliver_id)
    SetupCarToDelivery.setup(deliver_id)
  end
end
