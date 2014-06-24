require_relative 'inning'
require 'pry'

class Game
  attr_accessor :home_team, :away_team, :home_score, :away_score, :inning_number

  def initialize(home_team, away_team)
    @home_team = home_team
    @away_team = away_team
    @home_score = 0
    @away_score = 0
    @inning_number = 1
    play
  end

  def play
    9.times do
      play_inning(home_team, away_team, inning_number)
    end
    until home_score != away_score
      play_inning(home_team, away_team, inning_number)
    end
  end

  def play_inning(home_team, away_team, inning_number)
    inning = Inning.new(home_team, away_team, inning_number)
    @away_score += inning.away_score
    @home_score += inning.home_score
    @inning_number += 1
  end
end
