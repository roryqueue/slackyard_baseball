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
    contact
  end

  def fair_ball?(batter_contact, pitcher_velocity)
    #batters foul of 40.5% of balls they make contact with (does not count foulouts)
    if rand < log_five((batter_contact + 1 / 6 * (100 - batter_contact)), pitcher_velocity)
      ball = :fair
    else
      if rand(10) > 1
        ball = :foul
      else
        ball = :foulout
      end
    end
    ball
  end

  def hit?(batter_contact)
    if rand(200 + batter_contact) > batter_contact
      ball = :out
    else
      ball = :hit
    end
    ball
  end

  def extra_bases?(batter_power, batter_speed)
    #hits are: 67.6% singles, 19.5% doubles, 1.9% triples, 11.0% homeruns
    roll = rand(280 + batter_power + batter_speed)
    if roll < (batter_power / 2)
      hit = :homerun
    elsif roll < ((batter_power / 2) + (batter_speed / 8))
      hit = :triple
    elsif roll < (batter_power + batter_speed)
      hit = :double
    else hit = :single
    end
    hit
  end

end
