require_relative 'at_bat'
require_relative 'base_path'

class HalfInning

  def initialize(fielding_team, batting_team)
    @fielding_team = fielding_team
    @batting_team = batting_team
    @batting_order = orderx
    @pitcher = fielding_team.pitcher
  end

  def play
    at_bat = AtBat.new(fielding_team, batting_team)
  end


end
