FactoryBot.define do
  factory :delivery do
    name { Faker::Name.name }
    address { Faker::Address.street_address }
    zip_code { Faker::Address.zip_code }
    description { Faker::Quotes::Shakespeare.king_richard_iii_quote }
  end
end
