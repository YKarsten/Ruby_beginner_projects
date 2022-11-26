# To display colors more easily
require 'colorize'

# Computer generated code
class ComputerCode
  attr_reader :code

  def initialize
    @code = Array.new(4) { rand(7) }
  end

  def guess_code(player_input)
    # check for correct color + correct position
    same_same = code.each_with_index.map { |value, index| value == player_input[index] }
    puts "# Correct color + position #{same_same.count(true)}"

    # Check for correct color, but incorrect position
    color_match = 4 - (code - player_input).length
    puts "# Matching color, but wrong position: #{color_match - same_same.count(true)}"
  end

  def read_code
    @code
  end
end

def user_input
  # Prompt and get player input
  int_in = false
  while int_in == false

    puts 'Now its your turn to guess the code. Enter four digits without whitespace into the console.'
    player_in = gets.chomp

    # convert string input into integer array
    player_in = player_in.each_char.map { |c| Integer(c) }
    int_in = true if player_in.length == 4
  end
end

def mastermind
  # Init game
  game = ComputerCode.new
  count = 0

  print "
  Welcome to my mastermind game.

  To win mastermind you need to guess a secret code, the computer has randomly generated at the start of this session.
  There are 6 colors/ numbers in 4 possible positions (1..4). \n",
    '  1  '.colorize(:background => :white),
    '  2  '.colorize(:background => :blue),
    '  3  '.colorize(:background => :green),
    '  4  '.colorize(:background => :yellow),
    '  5  '.colorize(:background => :red),
    '  6  '.colorize(:background => :magenta),
  "\n 
  Once you make your guess the computer gives you some cryptic feedback.
  It tells you how many colors are in the correct position, but not which of the four,
  and it also tells you if there are correctly guessed colors in a wrong position.
  You have 12 turns to guess the correct position to win, otherwise the machine wins.
  "
  # Game loop
  while count <= 12

    # Prompt and get player input
    user_input

    # Get feedback
    game.guess_code(player_in)

    count += 1
    if count == 13
      # Game over if 12 guesses have been exceeded
      puts "You didnt't guess the code correctly.
      But I had a talk with the computer and it is going to tell you the correct code.
      It was: #{game.read_code}"
      break
    end

    # go for another loop unless the win condition has been reached
    next unless game.read_code.eql?(player_in)

    puts 'Congratulations! You guessed the code correctly.'
    break
  end
end

# call mastermind method
mastermind
