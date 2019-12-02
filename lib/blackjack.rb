require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random_num = rand(1..11)
  # code #deal_card here
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  input = gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts("Sorry, you hit #{total}. Thanks for playing!")
  # code #end_game here
  
end




def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(total)
  prompt_user
  key = get_user_input
  if key != "h" && key != "s" 
    invalid_command
    prompt_user
    key = get_user_input
  elsif key == "h"
    total += deal_card
  elsif key == 's'
    total
  end
 
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  while total < 21 
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
