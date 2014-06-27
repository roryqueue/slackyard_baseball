require 'pry'

require_relative 'player'
require_relative 'maths'
require_relative 'at_bat'
require_relative 'pitch'
require_relative 'count'
require_relative 'at_bat'
require_relative 'base_path'
require_relative 'half_inning'
require_relative 'inning'
require_relative 'team'
require_relative 'game'

  mets0 = Player.new("Justin", "Verlander", 90, 90, 50, 50, 90, 90)
  mets1 = Player.new("Alex", "Gonzalez", 90, 90, 90, 90, 90, 90)
  mets2 = Player.new("Hanley", "Ramirez", 90, 90, 90, 90, 90, 90)
  mets3 = Player.new("Xander", "Bogaerts", 90, 90, 90, 90, 90, 90)
  mets4 = Player.new("Justin", "Verlander", 90, 90, 90, 90, 90, 90)
  mets5 = Player.new("Alex", "Gonzalez", 90, 90, 90, 90, 90, 90)
  mets6 = Player.new("Hanley", "Ramirez", 90, 90, 90, 90, 90, 90)
  mets7 = Player.new("Xander", "Bogaerts", 90, 90, 90, 90, 90, 90)
  mets8 = Player.new("Xander", "Bogaerts", 90, 90, 90, 90, 90, 90)

  yanks0 = Player.new("CC", "Sabathia", 90, 90, 50, 50, 90, 90)
  yanks1 = Player.new("David", "Ortiz", 90, 90, 90, 90, 90, 90)
  yanks2 = Player.new("Miguel", "Cabrera", 90, 90, 90, 90, 90, 90)
  yanks3 = Player.new("Bryce", "Harper", 90, 90, 90, 90, 90, 90)
  yanks4 = Player.new("CC", "Sabathia", 90, 90, 90, 90, 90, 90)
  yanks5 = Player.new("David", "Ortiz", 90, 90, 90, 90, 90, 90)
  yanks6 = Player.new("Miguel", "Cabrera", 90, 90, 90, 90, 90, 90)
  yanks7 = Player.new("Bryce", "Harper", 90, 90, 90, 90, 90, 90)
  yanks8 = Player.new("Bryce", "Harper", 90, 90, 90, 90, 90, 90)

mets_team = [mets0, mets1, mets2, mets3, mets4, mets5, mets6, mets7, mets8]
mets_order = BattingOrder.new(mets_team)

yankees_team = [yanks0, yanks1, yanks2, yanks3, yanks4, yanks5, yanks6, yanks7, yanks8]
yankees_order = BattingOrder.new(yankees_team)

yankees = Team.new(yankees_team, yankees_order)
mets = Team.new(mets_team, mets_order)

# halfinning = HalfInning.new(yankees, mets)

# inning = Inning.new(yankees, mets, 1)

game = Game.new(yankees, mets)

# puts game
# 10.times do
#   pitch = Pitch.new(cc, miguel)
#   pitch_array = ["placement: #{pitch.placement}", "swing?: #{pitch.swing}", "contact?: #{pitch.contact}", "fair or foul?: #{pitch.fair_or_foul}", "hit?: #{pitch.hit_or_out}", "hit type?: #{pitch.hit_type}", "==================="]
#   puts pitch_array
# end

# 10.times do
# atbat = AtBat.new(cc, miguel)
# puts "count: #{atbat.count.balls} and #{atbat.count.strikes}, result: #{atbat.result}"
# end

