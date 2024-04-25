# frozen_string_literal: true

# Connect Four game
class ConnectFour
  attr_accessor :board

  def initialize
    puts "Let's play Connect Four!"
    puts 'The goal is to connect four of your symbols together.'
    puts 'You can only choose a column! Your piece will go to the lowest position.'
    @board = Array.new(4) { Array.new(4) { '_' } }
    show_board
  end

  def show_board
    @board.each do |row|
      puts "|#{row.join('|')}|"
    end
    puts ' 0 1 2 3'
  end
end

# general player class for human or computer players
class Player < ConnectFour
  def choose_col
    puts 'Select a column to make your move. (0~3)'
    ans = gets.chomp.to_i
    until ans <= 3 && ans >= 0
      puts 'Enter a valid column.'
      puts 'It must be a number between 0 and 3.'
      ans = gets.chomp.to_i
    end
    ans
  end

  def drop_piece(column, piece)
    return false unless column.between?(0, 3)

    @board[column].each_with_index do |cell, index|
      if cell == '_'
        @board[column][index] = piece
        true
      end
    end
    false
  end
end

game = Player.new
game.drop_piece('x')
game.drop_piece('x')
game.drop_piece('x')
game.drop_piece('x')
game.drop_piece('x')
game.show_board