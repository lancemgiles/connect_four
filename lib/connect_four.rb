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

  def check_h(piece)
    @board.each do |row|
      return true if row.all? { |c| c == piece }
    end
    false
  end

  def check_v(piece)
    @board.transpose.each do |col|
      return true if col.all? { |c| c == piece }
    end
    false
  end

  # bottom right to top left
  def check_diag_r(piece)
    if @board[0][0] == piece &&
       @board[1][1] == piece &&
       @board[2][2] == piece &&
       @board[3][3] == piece
      true
    else
      false
    end
  end

  # bottom left to top right
  def check_diag_l(piece)
    if @board[0][3] == piece &&
       @board[1][2] == piece &&
       @board[2][1] == piece &&
       @board[3][0] == piece
      true
    else
      false
    end
  end

  def check_diag(piece)
    check_diag_l(piece) || check_diag_r(piece)
  end
end

# general player class for human or computer players
class Player < ConnectFour
  def choose_col
    puts 'Select a column to make your move. (0~3)'
    ans = gets.chomp.to_i
    until ans.between?(0, 3)
      puts 'Enter a valid column. It must be a number between 0 and 3.'
      ans = gets.chomp.to_i
    end
    row = find_empty_row(ans)
    while row.nil?
      puts 'You chose a full column. Try again'
      ans = gets.chomp.to_i
      row = find_empty_row(ans)
    end
    ans
  end

  def find_empty_row(col)
    @board.to_enum.with_index.reverse_each do |row, index|
      return index if row[col] == '_'
    end
    nil
  end

  def drop_piece(column, piece)
    row = find_empty_row(column)
    @board[row][column] = piece
  end
end

# player = Player.new

# 10.times do
#   player.drop_piece(player.choose_col, 'x')
#   player.show_board
# end
# player.check_diag_r('x')
