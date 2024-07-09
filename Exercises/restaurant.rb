class Worker
  attr_accessor :name, :position

  def initialize(name, position)
    @name = name
    @position = position
  end

  def display_info
    puts "#{@position}: #{@name}"
  end
end

class Client
  attr_accessor :name

  def initialize(name)
    @name = name
    @order = []
  end

  def place_order(item)
    @order << item
    puts "#{@name} ordered: #{item.name}"
  end

  def view_order
    puts "#{@name}'s Order:"
    @order.each { |item| puts item.display_info }
  end
end

class Menu
  attr_accessor :foods, :drinks

  def initialize
    @foods = []
    @drinks = []
  end

  def add_food(food)
    @foods << food
  end

  def add_drink(drink)
    @drinks << drink
  end

  def display_menu
    puts "Menu:"
    puts "Foods:"
    @foods.each { |food| food.display_info }
    puts "Drinks:"
    @drinks.each { |drink| drink.display_info }
  end
end

class Food
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_info
    puts "#{@name}: $#{@price}"
  end
end

class Drink
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_info
    puts "#{@name}: $#{@price}"
  end
end

class Restaurant
  def initialize(name)
    @name = name
    @workers = []
    @clients = []
    @menu = Menu.new
  end

  def hire_worker(worker)
    @workers << worker
    puts "Hired: #{worker.name} as #{worker.position}"
  end

  def add_client(client)
    @clients << client
    puts "Added client: #{client.name}"
  end

  def add_food_to_menu(food)
    @menu.add_food(food)
    puts "Added food to menu: #{food.name}"
  end

  def add_drink_to_menu(drink)
    @menu.add_drink(drink)
    puts "Added drink to menu: #{drink.name}"
  end

  def display_workers
    puts "Workers:"
    @workers.each { |worker| worker.display_info }
  end

  def display_clients
    puts "Clients:"
    @clients.each { |client| puts client.name }
  end

  def display_menu
    @menu.display_menu
  end
end

# Example Usage
restaurant = Restaurant.new("Gourmet Paradise")

# Hiring workers
chef = Worker.new("John Doe", "Chef")
waiter = Worker.new("Jane Smith", "Waiter")
restaurant.hire_worker(chef)
restaurant.hire_worker(waiter)

# Adding foods and drinks to the menu
burger = Food.new("Burger", 10)
pizza = Food.new("Pizza", 12)
cola = Drink.new("Cola", 3)
coffee = Drink.new("Coffee", 2)
restaurant.add_food_to_menu(burger)
restaurant.add_food_to_menu(pizza)
restaurant.add_drink_to_menu(cola)
restaurant.add_drink_to_menu(coffee)

# Adding clients
client1 = Client.new("Alice")
client2 = Client.new("Bob")
restaurant.add_client(client1)
restaurant.add_client(client2)

# Clients placing orders
client1.place_order(burger)
client1.place_order(cola)
client2.place_order(pizza)
client2.place_order(coffee)

# Display information
restaurant.display_workers
restaurant.display_clients
restaurant.display_menu

client1.view_order
client2.view_order

