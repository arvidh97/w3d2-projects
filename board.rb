class Board
    def initialize
        @grid= Array.new(4) {Array.new (4,[])}
    end

    def populate
        @grid.each do |subarr|
            subarr.each do |ele|
                Card.new.card_val
    end
end