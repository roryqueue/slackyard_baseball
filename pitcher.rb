require 'pry'

class Pitcher
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def placement(pitcher_control)
    placed = nil
    #MLB pitchers average 62% strikes: this averages 63.6% if average pitcher control is 70
    if rand(pitcher_control + 40) > pitcher_control
      placed = :ball
    else
      placed = :strike
    end
    placed
  end


end
