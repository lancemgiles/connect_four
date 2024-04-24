# frozen_string_literal: true

# Connect Four game
class ConnectFour
  attr_accessor :board

  WIN = [
    [@board[0][0], @board[0][1], @board[0][2], @board[0][3]],
    [@board[1][0], @board[1][1], @board[1][2], @board[1][3]],
    [@board[2][0], @board[2][1], @board[2][2], @board[2][3]],
    [@board[3][0], @board[3][1], @board[3][2], @board[3][3]],
    [@board[0][0], @board[1][0], @board[2][0], @board[3][0]],
    [@board[0][1], @board[1][1], @board[2][1], @board[3][1]],
    [@board[0][2], @board[1][2], @board[2][2], @board[3][2]],
    [@board[0][3], @board[1][3], @board[2][3], @board[3][3]],
    [@board[0][0], @board[1][1], @board[2][2], @board[3][3]],
    [@board[0][3], @board[1][2], @board[2][1], @board[3][0]]
  ].freeze

  def initialize
    @board = []
    build
  end

  def build
    @board = Array.new(4) { Array.new(4) { |n| n } }
  end
end
