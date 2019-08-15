require "colorize"
require "pry"

class Magick_ball
  def initialize
    @answer = [
      "Yes",
      "No",
      "Maybe",
      "Do you kiss your mom with that mouth?",
      "It is decidedly so",
      "Ask again later",
      "Yes but do it drunk",
      "Concentrate and ask again",
      "Don't count on it",
      "Outlook not so good",
      "Without a doubt",
      "Reply hazy, try again"
    ]
      @random_answers = @answer.sample

    open  
    menu 
  end  

  def open
    puts "--- MAGICK 8 BALL ---".colorize(:magenta)
    puts "What is your name?".colorize(:magenta)
    print "> ".colorize(:magenta)
    name = gets.strip
    puts "When is your birthday?".colorize(:magenta)
    print "> ".colorize(:magenta)
    birthday = gets.strip
    puts "Welcome, #{name} born on #{birthday}".colorize(:magenta)
    sleep(1)
  end
  
  def menu
    puts "Please select an option".colorize(:magenta)
    puts "1) Ask a question".colorize(:magenta)
    puts "2) Add an answer".colorize(:magenta)
    puts "3) Reset answers".colorize(:magenta)
    puts "4) View all answers".colorize(:magenta)
    puts "5) EXIT".colorize(:magenta)
    print ">"
  choice = gets.to_i
  case choice
    when 1
      puts "What is your question?".colorize(:green)
      print"> "
      gets
      puts @random_answers
      sleep(3)
      menu
    when 2
      puts "What answer would you like to add?"
      print "> "
      reply = gets.strip
      @answer << reply
      sleep(1)
      menu
    when 3
      puts "Are you sure you want to reset the answers?"
      print "> "
    when 4
      puts @answer
    when 5
      exit(true)
    else
      puts "Please try again"
      sleep(2)
      print `clear`
      menu
    end  
  end  
end 

Magick_ball.new
  