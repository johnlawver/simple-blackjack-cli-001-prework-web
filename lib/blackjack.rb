def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  x= deal_card + deal_card
  display_card_total(x)
  return x
end

def hit?(twoCardTotal)
  prompt_user
  input = get_user_input
  if input == 'h' 
    threeCardTotal = twoCardTotal + deal_card
    return threeCardTotal
  elsif input == 's' 
    return twoCardTotal
  else 
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  running_total  = initial_round
  until running_total > 21 do 

    running_total = hit?(running_total)
    display_card_total(running_total)
  end
  end_game(running_total)
  

end
    
