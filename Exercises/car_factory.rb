class Car
  attr_accessor :make, :model, :year, :color

  def initialize(make, model, year, color)
    @make = make
    @model = model
    @year = year
    @color = color
  end

  def start_engine
    puts "The engine of the #{@make} #{@model} is now running."
  end

  def stop_engine
    puts "The engine of the #{@make} #{@model} is now off."
  end

  def paint(new_color)
    @color = new_color
    puts "The #{@make} #{@model} has been painted #{new_color}."
  end

  def display_info
    puts "Car Information: #{@year} #{@make} #{@model}, Color: #{@color}"
  end
end

class CarFactory
  def initialize
    @inventory = []
  end

  def create_car(make, model, year, color)
    car = Car.new(make, model, year, color)
    @inventory << car
    car
  end

  def display_inventory
    puts "Factory Inventory:"
    @inventory.each_with_index do |car, index|
      puts "#{index + 1}. #{car.year} #{car.make} #{car.model}, Color: #{car.color}"
    end
  end
end

# Create a factory
factory = CarFactory.new

# Create some cars
car1 = factory.create_car("Toyota", "Corolla", 2020, "Red")
car2 = factory.create_car("Honda", "Civic", 2019, "Blue")
car3 = factory.create_car("Ford", "Mustang", 2021, "Black")

# Display factory inventory
factory.display_inventory

# Interact with the cars
car1.start_engine
car2.paint("Green")
car3.display_info
car3.stop_engine

# Display factory inventory after changes
factory.display_inventory

