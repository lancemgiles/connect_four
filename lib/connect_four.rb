# frozen_string_literal: true

# Connect Four game
class ConnectFour
  attr_accessor :board

  def build
    @board = Array.new(4) { Array.new(4) { |n| n } }
  end
end

ConnectFour.new.build
