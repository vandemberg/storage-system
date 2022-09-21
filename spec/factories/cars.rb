FactoryBot.define do
  factory :car do
    name { Faker::Vehicle.model }
    status { 1 }
  end
end
