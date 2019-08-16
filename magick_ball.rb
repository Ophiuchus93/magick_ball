require "colorize"
require "pry"

class Magick_ball
  def initialize
    @answers = [
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

      @user_answers = @answers.clone, []

      @random_answers = @answers.sample

    open  
    menu 
  end  

  def open
    puts "--- MAGICK 8 BALL ---".colorize(:magenta)
    puts "What is your name?".colorize(:yellow)
    print "> ".colorize(:yellow)
    name = gets.strip
    puts "When is your birthday?".colorize(:yellow)
    print "> ".colorize(:yellow)
    birthday = gets.strip
    puts "Welcome, #{name} born on #{birthday}".colorize(:yellow)
    sleep(1)
  end
  
  def menu
    puts "Please select an option".colorize(:magenta)
    puts "1) Ask a question".colorize(:magenta)
    puts "2) Add an answer".colorize(:magenta)
    puts "3) View all answers".colorize(:magenta)
    puts "4) Reset answers".colorize(:magenta)
    puts "5) EXIT".colorize(:magenta)
    print ">"
  choice = gets.to_i
  case choice
    when 1
      puts "What is your question?".colorize(:green)
      print"> "
      gets
      puts "Shaking Magic 8 Ball".colorize(:cyan)
      sleep(1)
      puts @random_answers
      sleep(2)
      menu
    when 2
      puts "What answer would you like to add?".colorize(:blue)
      print "> "
      reply = gets.strip
      @user_answers << reply
      sleep(1)
      menu
    when 3
      puts @answers
      puts @user_answers
      menu
    when 4
      puts "Are you sure you want to reset the answers y/n?".colorize(:red)
      print "> "
      yes = gets.strip
      if yes == "y"
        @user_answers.clear
        # binding.pry
        menu
      else
        menu  
      end  
    when 5
      puts "Make your own destiny".colorize(:cyan)
      sleep (2)
      exit(true)
    else
      puts "Please try again".colorize(:red)
      sleep(2)
      print `clear`
      menu
    end  
  end  
end 

Magick_ball.new
  