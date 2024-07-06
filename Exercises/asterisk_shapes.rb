class AsteriskShapes
  def draw_rectangle(width, height)
    height.times do
      puts '*' * width
    end
  end

  def draw_ellipse(width, height)
    (0...height).each do |y|
      (0...width).each do |x|
        if (4 * (x - width / 2.0) ** 2) / width.to_f ** 2 + (4 * (y - height / 2.0) ** 2) / height.to_f ** 2 <= 1
          print '*'
        else
          print ' '
        end
      end
      puts
    end
  end

  def draw_triangle(height)
    height.times do |i|
      puts ' ' * (height - i - 1) + '*' * (2 * i + 1)
    end
  end

  def draw_parallelogram(width, height)
    height.times do |i|
      puts ' ' * (height - i - 1) + '*' * width
    end
  end
end

shapes = AsteriskShapes.new

puts "Rectangle:"
shapes.draw_rectangle(10, 5)
puts

puts "Ellipse:"
shapes.draw_ellipse(20, 10)
puts

puts "Triangle:"
shapes.draw_triangle(5)
puts

puts "Parallelogram:"
shapes.draw_parallelogram(10, 5)
puts

