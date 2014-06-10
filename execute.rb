require 'pry'
require_relative 'batter'
require_relative 'pitcher'
require_relative 'player'
require_relative 'maths'
require_relative 'at_bat'
require_relative 'pitch'
require_relative 'count'
require_relative 'at_bat'
require_relative 'base_path'
require_relative 'half_inning'
require_relative 'team'


miguel = Player.new("Miguel", "Cabrera", Team.new([],[]), 70, 70, 70, 70, 70, 70)
cc = Player.new("CC", "Sabathia", Team.new([],[]), 70, 70, 70, 70, 70, 70)
alex = Player.new("Alex", "Gonzalez", Team.new([],[]), 70, 70, 70, 70, 70, 70)

miguel_batting = Batter.new(miguel)
alex_batting = Batter.new(miguel)
cc_pitching = Pitcher.new(cc)
mets_order = BattingOrder.new([miguel_batting, alex_batting])



yankees = Team.new([cc_pitching], [])
mets = Team.new([],mets_order)

halfinning = HalfInning.new(yankees, mets)
# 10.times do
#   pitch = Pitch.new(cc_pitching, miguel_batting)
#   pitch_array = ["placement: #{pitch.placement}", "swing?: #{pitch.swing}", "contact?: #{pitch.contact}", "fair or foul?: #{pitch.fair_or_foul}", "hit?: #{pitch.hit_or_out}", "hit type?: #{pitch.hit_type}", "==================="]
#   puts pitch_array
# end

# 10.times do
# atbat = AtBat.new(cc_pitching, miguel_batting)
# puts "count: #{atbat.count.balls} and #{atbat.count.strikes}, result: #{atbat.result}"
# end


