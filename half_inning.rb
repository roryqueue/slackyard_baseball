require_relative 'at_bat'
require_relative 'base_path'
require_relative 'batting_order'
require 'pry'

class HalfInning
  attr_reader :fielding_team, :batting_team, :batting_order, :pitcher, :outs, :base_path

  def initialize(fielding_team, batting_team)
    @fielding_team = fielding_team
    @batting_team = batting_team
    @batting_order = batting_team.batting_order.rotation
    @pitcher = fielding_team.pitcher
    @outs = 0
    @base_path = BasePath.new
    play
  end

  def play
    #play succession of at bats
    at_bat = AtBat.new(fielding_team.pitcher, batting_team.batting_order.next!)
    update_half_inning(at_bat)
    until outs >= 3
      binding.pry
      at_bat = AtBat.new(fielding_team.pitcher, batting_team.batting_order.next!)
      update_half_inning(at_bat)
    end
  end

  def update_half_inning(at_bat)
    #update for results of each at bat
    out_check(at_bat)
    if outs < 3
      update_bases
    end
  end

  def out_check(at_bat)
    #record any outs
    if at_bat.result == :out
      outs += 1
    end
  end

  def update_bases(at_bat)
    #record any people on base or scored
    if at_bat.result == :single
      base_path.single(at_bat(batter.player))
    elsif at_bat.result == :double
      base_path.double(at_bat(batter.player))
    elsif at_bat.result == :triple
      base_path.triple(at_bat(batter.player))
    elsif at_bat.result == :homerun
      base_path.homerun(at_bat(batter.player))
    elsif at_bat.result == :walk
      base_path.walk(at_bat(batter.player))
    end
  end

end
