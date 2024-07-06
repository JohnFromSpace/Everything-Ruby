class Polygon
  attr_reader :num_sides

  def initialize(num_sides)
    @num_sides = num_sides
  end

  def inner_orthogonals
    2 * num_sides
  end
end

# Example usage with a predefined number of sides
num_sides = 5  # You can change this value to the desired number of sides
polygon = Polygon.new(num_sides)
puts "The number of inner orthogonals is: #{polygon.inner_orthogonals}"
