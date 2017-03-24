require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(11)
end

def display_card_total(card)
    puts "Your cards add up to #{card}"
    return card
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
    sum = deal_card + deal_card
    # puts display_card_total(sum)
    return display_card_total(sum)
end

def hit?(card_total)
prompt_user
  store = get_user_input
    if store == 's'
        return card_total
    elsif store == 'h'
        return card_total += deal_card
    else
        invalid_command
    end
end


def invalid_command
    puts "Please enter a valid command"

end

#####################################################
# get every test to pass before coding runner below #
##########################f###########################

def runner
    counter = 0
    welcome
    # initial_round
    counter = initial_round
    until hit?(counter) > 21
        display_card_total(counter)
        counter = hit?(counter)
        hit?(counter)

    end
    puts "ended"

end


# def runner
#     welcome
#     card = initial_round
#     until hit?(card) >= 21
#         card = hit?(display_card_total(card))
#         # binding.pry
#         # display_card_total()
#         prompt_user
#         hit?(display_card_total(card))
#
#     end
#     if card > 21
#         end_game(card)
#     end
# end
