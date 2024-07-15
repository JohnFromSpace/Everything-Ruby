require 'time'

class TimeGuesser
  def initialize
    @current_time = Time.now
  end

  def random_time_guess
    hour = rand(0..23)
    minute = rand(0..59)
    second = rand(0..59)
    Time.new(@current_time.year, @current_time.month, @current_time.day, hour, minute, second)
  end

  def guess_time
    guess = random_time_guess
    actual_time = @current_time

    puts "Guessed Time: #{guess.strftime('%H:%M:%S')}"
    puts "Actual Time: #{actual_time.strftime('%H:%M:%S')}"

    difference = (actual_time - guess).abs
    puts "Difference: #{difference.round} seconds"

    if difference < 60
      puts "Very close!"
    elsif difference < 3600
      puts "Within the same hour."
    else
      puts "Quite far off."
    end
  end
end

# Create a new instance of TimeGuesser and make a guess
time_guesser = TimeGuesser.new
time_guesser.guess_time

