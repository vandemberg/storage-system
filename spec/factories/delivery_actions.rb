FactoryBot.define do
  factory :delivery_action do
    car_id { nil }
    delivery_id { nil }
    delivery_at { "2022-09-22 23:12:42" }
    estimated_at { "2022-09-22 23:12:42" }
    status { 1 }
  end
end
