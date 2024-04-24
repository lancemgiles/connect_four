# frozen_string_literal: true

require './lib/connect_four'

describe ConnectFour do
  describe '#build' do
    it 'builds a 16x16 grid and returns the array' do
      board = ConnectFour.new
      expect(board.build).to eql([[0, 1, 2, 3], [0, 1, 2, 3], [0, 1, 2, 3], [0, 1, 2, 3]])
    end
  end
end
