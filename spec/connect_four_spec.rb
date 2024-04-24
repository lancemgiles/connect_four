# frozen_string_literal: true

require './lib/connect_four'

describe ConnectFour do
  # describe '#build' do
  #   it 'builds a 4x4 grid and returns the array' do
  #     board = ConnectFour.new
  #     expect(board.board).to eql([%w[_ _ _ _], %w[_ _ _ _], %w[_ _ _ _], %w[_ _ _ _]])
  #   end
  # end
  # describe '#show_board' do
  #   it 'prints the board values as a grid with the column numbers at the bottom' do
  #     board = ConnectFour.new
  #     game = <<~TEXT
  #     |_|_|_|_|
  #     |_|_|_|_|
  #     |_|_|_|_|
  #     |_|_|_|_|
  #      0 1 2 3
  #     TEXT
  #     expect do
  #       board.show_board
  #     end.to output(game).to_stdout
  #   end
  # end
end

describe Player do
  # describe '#choose_row' do
  #   it 'returns column selected by player' do
  #     player = Player.new
  #     expect(player.choose_row).to eql(0)
  #   end
  # end
  describe '#find_empty_row' do
    it 'returns lowest board position of a given column' do
      player = Player.new
      expect(player.find_empty_row(0)).to eql(%w[_ _ _ _])
    end
  end
end
