# ###################################
#  Soccer player's petit livecode ⚽️
# ###################################

# Imagine we want to build a soccer video game.
# Just like you would begin by creating the Soccer players
# in a soccer board game, we will start building our digital players

# 1. Let's begin with the mould (= the class)
#   - create a SoccerPlayer class
#   - the player should have:
#        a name (defined at the player creation),
#        a club (defined at the player creation),
#        a monthly salary (defined at the player creation),
#        whether he/she got a red card or not (initially not!)

#   - we should be able to get his/her name, monthly salary, red card status
#   - we should be able to get the player's club and change it
#   - we should be able to give a red card to a player

class SoccerPlayer
  attr_reader :name, :red_card, :salary
  attr_accessor :club # = (attr_reader + attr_writer)

  # The method that is called when you create a new Instance!
  def initialize(name, club, monthly_salary)
    @name = name
    @club = club
    @salary = monthly_salary
    @red_card = false
  end

  def out!
    @red_card = true
  end

  def give_more_money
    @salary += 1_000_000
  end
end

# 2. Now, let's make our player models (= instances)
#   - build two Soccer Player instances
#   - change the first player club
#   - give a red card to the second!

soccer_player_1 = SoccerPlayer.new("Cristiano Ronaldo", "Juventus 🇮🇹", "I don\'t know")
soccer_player_2 = SoccerPlayer.new("Keisuke Honda", "Botafogo 🇧🇷", 3_000_000)

puts "Our two SoccerPlayer instances:"
p soccer_player_1
p soccer_player_2
puts ""

puts "The club of #{soccer_player_1.name} is #{soccer_player_1.club}"
puts "Change club!"
soccer_player_1.club = "PSG 🇫🇷"
puts "The club of #{soccer_player_1.name} is #{soccer_player_1.club}"
puts ""

puts "#{soccer_player_1.name} #{soccer_player_1.red_card ? "won\'t touch the lawn that time!" : "can play!"}"
puts "Player out!!"
soccer_player_1.out!
puts "#{soccer_player_1.name} #{soccer_player_1.red_card ? "won\'t touch the lawn that time!" : "can play!"}"
puts ""

puts "The changed instance:"
p soccer_player_1

# Note:
# soccer_player_1.give_more_money will return an error message
# because we initialized @salary with a String
