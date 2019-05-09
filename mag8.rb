# find random number generator code
require 'pry'
def menu
@answer = ["yes", "no", "maybe", "only if your lucky"]
@eightball = @answer[rand(@answer.length)]

puts "im a magic 8 ball ask me anything"
puts "press 1) if you want to know your fortune now"
puts "press 2) if you want me to tell you what you want to hear"
input = gets.to_i
  case input
    when 1
    ask_question
puts @eightball
    when 2
      make_answer
    when "exit" 
      puts "goodbye"    
      exit
    else
      puts "invaid input"
    
  end
end



#method section
#1
def ask_question
  puts "ask a yes or no question"
   question = gets
   puts @eightball
menu
end

#2
def make_answer
  puts "make a new answer"
  new_answer = gets.to_s
  @answer << new_answer
  puts "your new answer is (#{new_answer})"
  
  menu
  
end

#quit 
def halt
  quit = gets.to_s
  if quit == "quit"
    exit
  else 
    menu
  end

end
menu

