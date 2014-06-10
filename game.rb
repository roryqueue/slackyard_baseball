require_relative 'game'

class Game
  attr_reader :home_team, :away_team, :home_score, :away_score

  def initialize(home_team, away_team)
    @home_team = home_team
    @away_team = away_team
    @home_score = 0
    @away_score = 0
    play
  end

  def play
    inning_number = 0
    9.times do
      inning = Inning.new()


end
