require_relative "card.rb"

class Board
    
    def initialize
        @grid= Array.new(4) {Array.new(4,:X)}
        @cards = [:a,:b,:c,:d,:e,:f,:g,:h,:a,:b,:c,:d,:e,:f,:g,:h]
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def not_full?
        @grid.flatten.include?(:X)
    end

    def populate
        @cards.each do |card|
            while not_full?
                x = rand(0...@grid.length)
                y = rand(0...@grid.length)
                if !@grid[x][y].is_a?(Card)
                     @grid[x][y] = Card.new(card, false)
                end
            end
        end
    end

    def render
        @grid.each do |subarr|
            puts subarr.join(" ")
        end
    end

    def won?
        @grid.each do |subarr|
            subarr.each do |ele| 
                return false if ele == :X
            end
        end
        true
    end

    def reveal(guess)
        if @grid[guess]==:X
            @grid[guess].reveal #@grid[guess] == card instance
        end
    end
end