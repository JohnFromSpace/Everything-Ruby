class Chatbot
  attr_accessor :name

  def initialize(name)
    @name = name
    @responses = {
      "hello" => "Hi there! How can I help you today?",
      "how are you" => "I'm just a bunch of code, but I'm functioning as expected!",
      "what's your name" => "My name is #{@name}. What's yours?",
      "bye" => "Goodbye! Have a great day!"
    }
  end

  def greet
    puts "Hello! I'm #{@name}, your friendly chatbot. Ask me something!"
  end

  def get_response(input)
    @responses.each do |key, value|
      return value if input.downcase.include?(key)
    end
    "I'm sorry, I don't understand that."
  end

  def chat
    greet
    loop do
      print "You: "
      user_input = gets.chomp
      break if user_input.downcase == "bye"
      response = get_response(user_input)
      puts "#{@name}: #{response}"
    end
  end
end

# Create and run the chatbot
bot = Chatbot.new("RubyBot")
bot.chat
