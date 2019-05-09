# find random number generator code
class FortuneTeller
require 'facets'
require 'pry'
require "colorize"
def initialize
@answer = ["yes", "no", "maybe", "only if your lucky"]
@eightball = @answer[rand(@answer.length)]

@new_answer = []
@answer_clone = @answer.clone
@all_answer = @answer << @new_answer << @answer_clone
menu
end 

def menu
  puts "im a magic 8 ball ask me anything".colorize(:cyan)
  puts " 1) if you want to know your fortune now".colorize(:blue)
puts " 2) if you want me to tell you what you want to hear".colorize(:red)
puts " 3) to see all the answers I have."
puts "type quit to exit"
input = gets.strip.downcase
  case input
    when "1"
      sleep(0.5)
    ask_question
puts @eightball
    when "2"
      sleep(0.5)
      make_answer
    when "3"
      puts display
    when "quit"
      exit
    else
      puts "invaid input".colorize(:red)
      menu
    
  end
end



#method section
#1
def ask_question
  
  puts "ask a yes or no question"
  question = gets
  thinking
   puts @eightball
   sleep(2)
menu
end

#2
def make_answer
  puts "make a new answer"
  @new_answer = gets.to_s
  binding.pry
  @new_answer << @answer_clone
  if_there
  

  puts "your new answers are #{display}"
  
  menu
  
end

def display
  @answer_clone.each do |i|
    puts i 
    sleep(0.75)
  end
end


def thinking
  thinking = ["hum.", "..", "...", "....",]
  thinking.each do |n|
    puts n
    sleep(0.5)
  end
end

def if_there
  if @new_answers.frequency == @answer.frequency 
    puts "already an answer"
  else 
    @new_answer << @answer 
  end

  end
  def everything
    
  end

end

FortuneTeller.new
