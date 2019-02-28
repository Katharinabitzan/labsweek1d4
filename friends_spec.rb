require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Shaggy",
      age: 12,
      monies: 1,
      friends: ["Velma","Fred","Daphne", "Scooby"],
      favourites: {
        tv_show: "Friends",
        snacks: ["charcuterie"]
      }
    }

    @person2 = {
      name: "Velma",
      age: 15,
      monies: 2,
      friends: ["Fred"],
      favourites: {
        tv_show: "Baywatch",
        snacks: ["soup","bread"]
      }
    }

    @person3 = {
      name: "Scooby",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma"],
      favourites: {
        tv_show: "Pokemon",
        snacks: ["Scooby snacks"]
      }
    }

    @person4 = {
      name: "Fred",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma", "Daphne"],
      favourites: {
        tv_show: "X-Files",
        snacks: ["spaghetti", "ratatouille"]
      }
    }

    @person5 = {
      name: "Daphne",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "X-Files",
        snacks: ["spinach"]
      }
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  # 1. For a given person, return their name
  # def test_getting_name__daphne
  #   result = get_name(@person5)
  #   assert_equal("Daphne", result)
  # end
  #
  # def test_getting_name__shaggy
  #   result = get_name(@person1)
  #   assert_equal("Shaggy", result)
  # end
  #
  # def test_getting_name__velma
  #   result = get_name(@person2)
  #   assert_equal("Velma", result)
  # end
  #
  # def test_getting_name__scooby
  #   result = get_name(@person3)
  #   assert_equal("Scooby", result)
  # end
  #
  # def test_getting_name__fred
  #   result = get_name(@person4)
  #   assert_equal("Fred", result)
  # end
  #
  # def test_getting_name__fail
  #   result = get_name(nil)
  #   assert_equal("nil", result)
  # end
  # 2. For a given person, return their favourite tv show
  # (e.g. the function favourite_tv_show(@person2) should return the string "Baywatch")
# def test_favourite_tv_show__velma
#   result = get_tv_show(@person2)
#   assert_equal("Baywatch", result)
# end
#
# def test_favourite_tv_show__shaggy
#   result = get_tv_show(@person1)
#   assert_equal("Friends", result)
# end

# def test_favourite_tv_show__scooby
#   result = get_tv_show(@person3)
#   assert_equal("Pokemon", result)
# end
#
# def test_favourite_tv_show__fred
#   result = get_tv_show(@person4)
#   assert_equal("X-Files", result)
# end

  # 3. For a given person, check if they like a particular food
  # (e.g. the function likes_to_eat(@person2, "bread") should return true, likes_to_eat(@person3, "spinach") should return false)

  # def test_likes_to_eat__true
  #   result = likes_to_eat(@person1, "bread")
  #   assert_equal(false, result)
  # end
  #
  # def test_likes_to_eat__false
  #   result = likes_to_eat(@person2, "bread")
  #   assert_equal(true, result)
  # end

  # 4. For a given person, add a new name to their list of friends
  # (e.g. the function add_friend(@person2, "Scrappy-Doo") should add Scrappy-Doo to the friends.)
  # (hint: This function should not return anything. After the function call, check for the length of the friends array to test it!)

# def test_add_friend__scooby
#   number_of_friends = @person3[:friends].count
#   add_friend(@person3, "Scrappy")
#   result = number_of_friends + 1
#   assert_equal(3, result)
# end
# #
# def test_add_friend_velma
#   number_of_friends = @person2[:friends].count
#   add_friend(@person3, "Scrappy")
#   result = number_of_friends + 1
#   assert_equal(2, result)
# end

  # 5. For a given person, remove a specific name from their list of friends
  # (hint: Same as above, testing for the length of the array should be sufficient)

  def test_lost_friend_velma
    number_of_friends = @person2[:friends].count
    lost_friend(@person3, "Fred")
    result = number_of_friends - 1
    assert_equal(0, result)
  end

  # 6. Find the total of everyone's money
  # (hint: use the @people array, remember how we checked the total number of eggs yesterday?)

def test_count_money
  result = count_money(@people)
  assert_equal(143, result)
end

  # 7. For two given people, allow the first person to loan a given value of money to the other
  # (hint: our function will probably need 3 arguments passed to it... the lender, the lendee, and the amount for this function)
  # (hint2: You should test if both the lender's and the lendee's money have changed, maybe two assertions?)

def test_loan
  result = loan(@person4, @person3, 3)
  assert_equal([17, 23], result)
end

  # 8. Find the set of everyone's favourite food joined together
  # (hint: concatenate the favourites/snack arrays together)

def test_all_snacks
  result = all_snacks(@people)


  # 9. Find people with no friends
  # (hint: return an array, there might be more people in the future with no friends!)

end
