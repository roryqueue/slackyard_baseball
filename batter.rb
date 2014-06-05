require_relative 'maths'
require 'pry'

class Batter
  attr_reader :player


  def initialize(player)
    @player = player
  end

  def swing?(placement)
    roll = rand(100)
    if placement == :strike
      #MLB batters swing at 65% of strikes
      if roll > 35 == true
        swing = true
      else
        swing = false
      end
    elsif placement == :ball
      #MLB batters swing at 30% of balls
      if roll > 70 == true
        swing = true
      else
        swing = false
      end
    # else raise "batter_swing error!"
    end
    swing
  end

  def contact?(placement, batter_contact, pitcher_velocity)
    #MLB batters make contact with swung-at strikes 88% of the time
    if placement == :strike
      if rand < log_five((batter_contact + 2 / 3 * (100 - batter_contact)), pitcher_velocity)
        contact = true
      else
        contact = false
      end
    elsif placement == :ball
    #MLB batters make contact with strikes 68% of the time
      if rand < log_five((batter_contact + 1 / 3 * (100 - batter_contact)), pitcher_velocity)
      contact = true
      else
      contact = false
      end
    # else raise "batter_contact error!"
    end
    binding.pry
    contact
  end

  def fair_ball?
    #batters foul of 40.5% of balls they make contact with (does not count foulouts)
    if rand < log_five((batter_contact + 1 / 6 * (100 - pitcher)), pitcher_velocity)
      ball = :fair
    else
      if rand(10) > 1
        ball = :foul
      else
        ball = :out
      end
    end
    ball
  end




  def hit_where?(batter_power)
    #
    roll = rand(900 + batter_power)
    if roll > 900
    #homerun
      hit_to = 0
    elsif roll > 800
      hit_to = 9
    elsif roll > 700
      hit_to = 8
    elsif roll > 600
      hit_to = 7
    elsif roll > 500
      hit_to = 6
    elsif roll > 400
      hit_to = 5
    elsif roll > 300
      hit_to = 4
    elsif roll > 200
      hit_to = 3
    elsif roll > 100
      hit_to = 2
    elsif roll > 0
      hit_to = 1
    # else raise "hit_where? error!"
    end
    hit_to
  end
end
