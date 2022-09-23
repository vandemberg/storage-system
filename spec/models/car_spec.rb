require 'rails_helper'

RSpec.describe Car, type: :model do
  describe "Test model validations" do
    it "should permit create a new car" do
      car = Car.new({ name: Faker::Vehicle.model })
      car.save

      expect(car.persisted?).to be(true)
    end

    it "CAN NOT create a new car withou name" do
      car = Car.new({ name: '' })
      car.save

      expect(car.persisted?).to be(false)
    end
  end
end
