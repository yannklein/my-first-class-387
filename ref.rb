# ###################################
#  Soccer player's petit livecode ⚽️
# ###################################

# Imagine we want to build a soccer video game.
# Just like you would begin by creating the Soccer players
# in a soccer board game, we will start building our digital players

# 1. Let's begin with the mould (= the class)
#   - create a SoccerPlayer class
#   - the car should have:
#        a name (defined at the player creation),
#        a club (defined at the player creation),
#        a monthly salary (defined at the player creation),
#        whether he/she got a red card or not (initially not!)

#   - we should be able to get his/her name, monthly salary, red card status
#   - we should be able to get the player's club and change it
#   - we should be able to give a red card to a player

# 2. Now, let's make our player models (= instances)
#   - build two Car instances
#   - change the first player club
#   - give a red card to the second!


class SoccerPlayer
  attr_accessor :club
  attr_reader :name, :monthly_salary, :red_card

  def initialize(club, name, monthly_salary)
    @club = club
    @name = name
    @monthly_salary = monthly_salary
    @red_card = false
  end

  def out!
    @red_card = true
  end
end

yann = SoccerPlayer.new("Tokyo FC 🗼", "Yann", 3_000_000)
doug = SoccerPlayer.new("Tokyo FC 🗼", "Doug", 10_000_000)

p yann
puts "#{yann.name}\'s club is #{yann.club}"
yann.club = "Osaka FC 🏯"
puts "#{yann.name}\'s club is #{yann.club}"
p yann
puts "#{yann.name} #{yann.red_card ? "can\'t play anymore" : "is ready to play"}"
puts "Yann out!"
yann.out!
puts "#{yann.name} #{yann.red_card ? "can\'t play anymore" : "is ready to play"}"
p yann

