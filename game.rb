require_relative "board.rb"
require_relative "card.rb"
require_relative "humanplayer.rb"

class Game
    def initialize
        @board = Board.new
        @humanplayer = HumanPlayer.new
    end

    def print
        @board.render
    end

    def populate
        @board.populate
    end

    def get_input
        @humanplayer.prompt
    end


end
