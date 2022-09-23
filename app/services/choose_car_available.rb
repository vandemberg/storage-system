class ChooseCarAvailable
  attr_accessor :delivery

  def choose
    cars = Car.available.to_a
    cars.sample
  end
end
