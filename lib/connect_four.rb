# frozen_string_literal: true

# Connect Four game
class ConnectFour
  attr_accessor :board

  def initialize
    puts "Let's play Connect Four!"
    puts 'The goal is to connect four of your symbols together.'
    puts 'You can only choose a column! Your piece will go to the lowest position.'
    @board = build
    show_board
  end

  def build
    Array.new(4) { Array.new(4) { '_' } }
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
  attr_accessor :history

  def choose_col
    puts 'Select a column to make your move. (0~3)'
    ans = gets.chomp.to_i
    until ans <= 3 && ans >= 0
      puts 'Enter a valid column.'
      puts 'It must be a number between 0 and 3.'
      puts 'It cannot already be occupied.'
      ans = gets.chomp.to_i
    end
    ans
  end

  def find_empty_row(col)
    @board.to_enum.with_index.reverse_each do |row, index|
      return index if row[col] == '_'
    end
    nil
  end

  def drop_piece(piece)
    col = choose_col
    row = find_empty_row(col)
    return false unless row

    @board[row][col] = piece
    true
  end
end

player = Player.new
player.drop_piece('x')
player.show_board
