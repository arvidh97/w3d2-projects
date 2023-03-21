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

    def populate
        shuffled_cards = @cards.shuffle
        @grid.each do |subarr| 
            subarr.each_with_index do |ele, i| 
                subarr[i] = shuffled_cards.pop 
            end
        end
    end

    def hidden_grid
        new_arr = Array.new(@grid.length) {Array.new(@grid.length, :X)}
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
            @grid[guess].reveal!#@grid[guess] == card instance
        end
    end
end