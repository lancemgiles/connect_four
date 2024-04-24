# frozen_string_literal: true

require './lib/connect_four'

describe ConnectFour do
  describe '#build' do
    it 'builds a 4x4 grid and returns the array' do
      board = ConnectFour.new
      expect(board.build).to eql([%w[_ _ _ _], %w[_ _ _ _], %w[_ _ _ _], %w[_ _ _ _]])
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
