require_relative "card.rb"

class Board
    
    def initialize
        @grid= Array.new(4) {Array.new (4,"[]")}
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
        @cards.each do |card|
            while @grid.not_full?
                if @grid[rand(0...@grid.length)][rand(0...grid.length)] == "[]"
                     @grid[rand(0...@grid.length)][rand(0...grid.length)] = Card.new(card, false)
                end
            end
        end
    end

    def not_full? 
        @grid.flatten.include?(" ")
    end

    def hidden

    def render
        @grid.each do |subarr|
            puts subarr
        end
    end

    def won?
        @grid.each do |subarr|
            subarr.each do |ele| 
                return false if ele == "[]"
            end
        end
        true
    end


end