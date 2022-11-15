Rails.application.routes.draw do
  mount DeliveryManager::Engine => "/delivery_manager"
end
