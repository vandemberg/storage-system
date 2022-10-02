class NewDeliveryJob
  include Sidekiq::Job

  def perform(deliver_id)
    SetupCarTodelivery.setup(deliver_id)
  end
end
