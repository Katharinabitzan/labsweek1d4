
# def get_name(person)
#     return person[:name]
# end

# def get_tv_show(person)
#   return person[:favourites][:tv_show]
# end

# def likes_to_eat(person, food_guess)
#   if person[:favourites][:snacks].include?(food_guess)
#     return true
#   else
#      return false
#    end
#  end

# def add_friend(person, new_friend)
#   person[:friends] << new_friend
# end

def lost_friend(person, lost_friend)
  person[:friends].delete(lost_friend)
end

def count_money(people)
  money = 0
    for person in people
    money += person[:monies]
    end
  return money
end

def loan(person1, person2, amount_loaned)
  new_lender_balance = person1[:monies] - amount_loaned
  new_lendee_balance = person2[:monies] + amount_loaned

my_array = [new_lender_balance, new_lendee_balance]
end

def no_friends(people)
  
