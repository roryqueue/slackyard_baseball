require 'pry'
require_relative 'batter'
require_relative 'pitcher'
require_relative 'player'
require_relative 'maths'
require_relative 'at_bat'
require_relative 'pitch'
require_relative 'count'



miguel = Player.new("Miguel", "Cabrera", 70, 70, 70, 70, 70, 70)
cc = Player.new("CC", "Sabathia", 70, 70, 70, 70, 70, 70)
miguel_batting = Batter.new(miguel)
cc_pitching = Pitcher.new(cc)


# 10.times do
#   pitch = Pitch.new(cc_pitching, miguel_batting)
#   pitch_array = ["placement: #{pitch.placement}", "swing?: #{pitch.swing}", "contact?: #{pitch.contact}", "fair or foul?: #{pitch.fair_or_foul}", "hit?: #{pitch.hit_or_out}", "hit type?: #{pitch.hit_type}", "==================="]
#   puts pitch_array
# end

10.times do
atbat = AtBat.new(cc_pitching, miguel_batting)
puts "count: #{atbat.count.balls} and #{atbat.count.strikes}, result: #{atbat.result}"
end
