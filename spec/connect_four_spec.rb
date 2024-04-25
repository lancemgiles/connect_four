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
  # describe '#check_h' do
  #   it 'returns true if a player has won horizontally' do
  #     player = Player.new
  #     player.drop_piece(player.choose_col, 'x')
  #     player.drop_piece(player.choose_col, 'x')
  #     player.drop_piece(player.choose_col, 'x')
  #     player.drop_piece(player.choose_col, 'x')
  #     player.show_board
  #     expect(player.check_h('x')).to eql(true)
  #   end
  # end
  describe '#check_v' do
    it 'returns true if a player has won vertically' do
      player = Player.new
      player.drop_piece(player.choose_col, 'x')
      player.drop_piece(player.choose_col, 'x')
      player.drop_piece(player.choose_col, 'x')
      player.drop_piece(player.choose_col, 'x')
      player.show_board
      expect(player.check_v('x')).to eql(false)
    end
  end
end

describe Player do
  # describe '#choose_col' do
  #   it 'returns column selected by player' do
  #     player = Player.new
  #     expect(player.choose_col).to eql(0)
  #   end
  # end
  # describe '#find_empty_row' do
  #   it 'returns index of lowest value row of a given column' do
  #     player = Player.new
  #     expect(player.find_empty_row(0)).to eql(3)
  #   end
  # end
  # describe '#drop_piece' do
  #   it 'returns true if a valid move was made' do
  #     player = Player.new
  #     expect(player.drop_piece('x')).to eql(true)
  #   end
  # end
end
