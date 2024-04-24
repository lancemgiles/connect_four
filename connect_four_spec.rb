# frozen_string_literal: true

describe ConnectFour do
  describe '#build' do
    it 'builds a 16x16 grid' do
      board = ConnectFour.new
      expect(board.build).to eql([[0, 1, 2, 3], [0, 1, 2, 3], [0, 1, 2, 3], [0, 1, 2, 3]])
    end
  end
end
