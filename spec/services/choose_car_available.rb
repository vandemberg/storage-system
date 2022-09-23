require "rails_helper"

RSpec.describe ChooseCarAvailable do
  describe "Should find a car that gonna do it the delivery" do
    context "Cars availables" do
      it "just one car available" do
        FactoryBot.create_list(:car, 3, { status: 1 })
        car = Car.first
        car.available!

        choosed_car = ChooseCarAvailable.new.choose

        expect(choosed_car.id). to eq(car.id)
      end

      it "many cars available" do
        FactoryBot.create_list(:car, 3)

        choosed_car = ChooseCarAvailable.new.choose

        expect(choosed_car.present?). to be(true)
        expect(choosed_car.available?). to be(true)
      end
    end

    context "Cars NOT availables" do
      it "no cars available" do
        FactoryBot.create_list(:car, 3, { status: 1 })

        choosed_car = ChooseCarAvailable.new.choose

        expect(choosed_car). to eq(nil)
      end
    end
  end
end
