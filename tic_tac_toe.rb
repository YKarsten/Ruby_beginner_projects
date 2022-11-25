class Board
    # instance variable :cells needs to be accessible from the Player Class/ instance
    attr_accessor :cells
   
    def initialize()
        @cells = (1..9).to_a
    end

    # Turn the @cells array into a tic tac toe board delimited by " | " and "---------"
    def to_s
        @cells.each_slice(3).map do |row|
            row.join(" | ")
        end.join("\n" + "-" * 10 + "\n")
    end
end

class Player
    def initialize(name, symbol, board)
        @name = name
        @symbol = symbol
        @board = board
    end

    # I do not fully understand why @board.cells works.
    # #.cells is not a method but an instance variable
    def make_move(number)
        # If a player tries to override another players symbol, the players turn is skipped instead
        if @board.cells[number - 1].is_a? Integer
            @board.cells[number - 1] = @symbol.to_s
        end
    end

    def get_cells
        @board.cells
    end

    def get_symbol
        @symbol
    end
end

def player_input(n)
    # name
    puts "Welcome player #{n}, whats your name? \n"
    name = gets.chomp

    # symbol
    puts "#{name} what would be your symbol of choice for this match?\n"
    symbol = gets.chomp

    return name, symbol
end

def win(cells, symbol)
    if cells[0..2] == [symbol, symbol, symbol]
        return true
    elsif cells[3..5] == [symbol, symbol, symbol]
        return true
    elsif cells[6..8] == [symbol, symbol, symbol]
        return true
    elsif cells.values_at(0, 3, 6) == [symbol, symbol, symbol]
        return true
    elsif cells.values_at(1, 4, 7) == [symbol, symbol, symbol]
        return true
    elsif cells.values_at(2, 5, 8) == [symbol, symbol, symbol]
        return true
    elsif cells.values_at(0, 4, 8) == [symbol, symbol, symbol]
        return true
    elsif cells.values_at(2, 4, 6) == [symbol, symbol, symbol]
        return true
    else 
        return false
    end
end

def tic_tac_toe()
    puts "Welcome to Tic-Tac-Toe!"
    board = Board.new

    p1_in = player_input(1)
    p2_in = player_input(2)

    player1 = Player.new(p1_in[0], p1_in[1], board)
    player2 = Player.new(p2_in[0], p2_in[1], board)

    win = false
    while win == false

        # P1 move
        puts board        
        puts "#{p1_in[0]} type [1-9] to place your symbol"
        p1_move = gets.chomp.to_i
        player1.make_move(p1_move)

        # check if player 1 has won, or if is a draw
        win = win(player1.get_cells, player1.get_symbol)
        if win == true
            puts board
            puts "Player 1 has won this match."
            break
        end

        if player1.get_cells.all?(String)
            puts board
            puts "This game ended in a draw"
            break
        end
        
        # P2 move
        puts board
        puts "#{p2_in[0]} type [1-9] to place your symbol"
        p2_move = gets.chomp.to_i
        player2.make_move(p2_move)

        # check if player 2 has won, or if is a draw
        win = win(player2.get_cells, player2.get_symbol)
        if win == true
            puts board
            puts "Player 2 has won this match."
            break
        end

        if player2.get_cells.all?(String)
            puts board
            puts "This game ended in a draw"
            break
        end

    end
end

# start the game
tic_tac_toe
