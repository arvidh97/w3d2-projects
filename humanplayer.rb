class HumanPlayer
    def initialize
        @input = input
    end

    def prompt
        puts "enter positions for the card you'd like to flip."
        input = gets.chomp.to_a
    end

end