
require 'pry'

class Fortune
    def initialize
        @answer = ["yes", "no", "maybe", "only if your lucky"]
        @new_answer = []
        menu
    end
    
    def menu
        puts "enter an something"
        @new_answer = gets
        @answer << @new_answer
        # binding.pry
        loop
    end

    def loop
        @answer.each do |i|
        puts i 
        sleep(0.5)
        end
    end

end

Fortune.new