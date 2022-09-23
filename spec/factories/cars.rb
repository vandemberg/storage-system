FactoryBot.define do
  factory :car do
    name { Faker::Vehicle.model }
    status { 0 }
  end
end
