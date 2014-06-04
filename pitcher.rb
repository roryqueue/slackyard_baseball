class Pitcher

def initialize(player)
  @player = player
end

def placement(pitcher_control)
  #MLB pitchers average 62% strikes: this averages 63.6% if average pitcher control is 70
  if rand(pitcher_control + 40) > pitcher_control
    placement == :ball
  else
    placement == :strike
  end
  placement
end


