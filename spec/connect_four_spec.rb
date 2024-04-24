# frozen_string_literal: true

require './lib/connect_four'

describe ConnectFour do
  describe '#build' do
    it 'builds a 16x16 grid and returns the array' do
      board = ConnectFour.new
      expect(board.build).to eql([[0, 1, 2, 3], [0, 1, 2, 3], [0, 1, 2, 3], [0, 1, 2, 3]])
    end
  end
  describe 'WIN' do
    it 'is an array of possible winning positions' do
      game = ConnectFour.new
      expect(game.WIN).to eql(
        [
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
        ]
      )
    end
  end
end
