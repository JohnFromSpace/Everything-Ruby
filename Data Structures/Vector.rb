class Vector
  attr_accessor :elements

  def initialize(*elements)
    @elements = elements
  end

  def +(other)
    raise ArgumentError, "Vectors must be of the same length" unless @elements.length == other.elements.length

    result = @elements.each_with_index.map do |el, index|
      el + other.elements[index]
    end

    Vector.new(*result)
  end

  def -(other)
    raise ArgumentError, "Vectors must be of the same length" unless @elements.length == other.elements.length

    result = @elements.each_with_index.map do |el, index|
      el - other.elements[index]
    end

    Vector.new(*result)
  end

  def *(scalar)
    result = @elements.map { |el| el * scalar }
    Vector.new(*result)
  end

  def dot(other)
    raise ArgumentError, "Vectors must be of the same length" unless @elements.length == other.elements.length

    result = @elements.each_with_index.reduce(0) do |sum, (el, index)|
      sum + el * other.elements[index]
    end

    result
  end

  def magnitude
    Math.sqrt(@elements.reduce(0) { |sum, el| sum + el**2 })
  end

  def to_s
    "Vector(#{elements.join(', ')})"
  end
end

# Example usage:
v1 = Vector.new(1, 2, 3)
v2 = Vector.new(4, 5, 6)

puts "v1: #{v1}"
puts "v2: #{v2}"

v3 = v1 + v2
puts "v1 + v2: #{v3}"

v4 = v1 - v2
puts "v1 - v2: #{v4}"

v5 = v1 * 3
puts "v1 * 3: #{v5}"

dot_product = v1.dot(v2)
puts "v1 . v2: #{dot_product}"

magnitude_v1 = v1.magnitude
puts "Magnitude of v1: #{magnitude_v1}"

