# frozen_string_literal: true

require './lib/connect_four'

describe ConnectFour do
  describe '#build' do
    it 'builds a 4x4 grid and returns the array' do
      board = ConnectFour.new
      expect(board.board).to eql([%w[_ _ _ _], %w[_ _ _ _], %w[_ _ _ _], %w[_ _ _ _]])
    end
  end
  describe '#show_board' do
    it 'returns the board values as a grid with the column numbers at the bottom' do
      board = ConnectFour.new
      expect(board.show_board).to eql("
        |_|_|_|_|
        |_|_|_|_|
        |_|_|_|_|
        |_|_|_|_|
         0 1 2 3
      ")
    end
  end
end

# describe Player do
#   describe '#make_move' do
#     it 'returns coordinates inputted by a player' do
#       player = Player.new
#       expect(player.make_move).to eql([0, 0])
#     end
#   end
# end
