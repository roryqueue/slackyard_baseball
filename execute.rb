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
pitch_one = Pitch.new(cc_pitching, miguel_batting)
puts pitch_one

