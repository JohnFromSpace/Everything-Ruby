class ZumaGame
  COLORS = %w[Red Blue Green Yellow].freeze

  def initialize
    @balls = generate_balls
    @score = 0
  end

  def generate_balls
    Array.new(10) { COLORS.sample }
  end

  def display_balls
    puts @balls.join(' ')
  end

  def insert_ball(index, color)
    @balls.insert(index, color)
    process_matches
  end

  def process_matches
    matches = find_matches
    while matches.any?
      matches.each { |match| match.each { |i| @balls[i] = nil } }
      @balls.compact!
      @score += matches.flatten.size
      matches = find_matches
    end
  end

  def find_matches
    matches = []
    current_color = @balls.first
    start_index = 0

    @balls.each_with_index do |ball, index|
      if ball != current_color
        matches << (start_index...index).to_a if index - start_index >= 3
        current_color = ball
        start_index = index
      end
    end

    matches << (start_index...@balls.size).to_a if @balls.size - start_index >= 3
    matches
  end

  def play
    puts 'Welcome to Zuma! Type "exit" to quit.'
    loop do
      display_balls
      puts 'Enter the position to insert the ball (0-based index) and the color:'
      input = gets.chomp
      break if input.downcase == 'exit'

      index, color = input.split
      index = index.to_i

      if index.between?(0, @balls.size) && COLORS.include?(color)
        insert_ball(index, color)
      else
        puts 'Invalid input. Try again.'
      end
    end
    puts "Game over! Your score: #{@score}"
  end
end

# Start the game
game = ZumaGame.new
game.play

