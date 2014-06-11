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

justin = Player.new("Justin", "Verlander", 70, 70, 70, 70, 70, 70)
cc = Player.new("CC", "Sabathia", 70, 70, 70, 70, 70, 70)
alex = Player.new("Alex", "Gonzalez", 70, 70, 70, 70, 70, 70)
hanley = Player.new("Hanley", "Ramirez", 70, 70, 70, 70, 70, 70)
xander = Player.new("Xander", "Bogaerts", 70, 70, 70, 70, 70, 70)
david = Player.new("David", "Ortiz", 70, 70, 70, 70, 70, 70)
miguel = Player.new("Miguel", "Cabrera", 70, 70, 70, 70, 70, 70)
bryce = Player.new("Bryce", "Harper", 70, 70, 70, 70, 70, 70)


mets_order = BattingOrder.new([alex, hanley, xander])
yankees_order = BattingOrder.new([david, miguel, bryce])


yankees = Team.new([cc], yankees_order)
mets = Team.new([justin],mets_order)

# halfinning = HalfInning.new(yankees, mets)

# inning = Inning.new(yankees, mets, 1)

game = Game.new(yankees, mets)

puts game.home
# 10.times do
#   pitch = Pitch.new(cc, miguel)
#   pitch_array = ["placement: #{pitch.placement}", "swing?: #{pitch.swing}", "contact?: #{pitch.contact}", "fair or foul?: #{pitch.fair_or_foul}", "hit?: #{pitch.hit_or_out}", "hit type?: #{pitch.hit_type}", "==================="]
#   puts pitch_array
# end

# 10.times do
# atbat = AtBat.new(cc, miguel)
# puts "count: #{atbat.count.balls} and #{atbat.count.strikes}, result: #{atbat.result}"
# end


