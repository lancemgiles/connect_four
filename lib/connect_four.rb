# frozen_string_literal: true

# Connect Four game
class ConnectFour
  attr_accessor :board

  def initialize
    @board = build
  end

  def build
    Array.new(4) { Array.new(4) { '_' } }
  end

  def show_board
    @board.each do |row|
      puts row
    end
    puts ' 0 1 2 3'
  end
end

# general player class for human or computer players
# class Player < ConnectFour
#   attr_accessor :history
  
#   def make_move
#     puts 'Select a column to make your move. (0~3)'
#     ans = gets.chomp.to_i
#     until ans <= 3 && ans >= 0
#       puts 'Enter a valid column.'
#       puts 'It must be a number between 0 and 3.'
#       puts 'It cannot already be occupied.'
#       ans = gets.chomp.to_i
#     end
#     ans
#   end
# end
