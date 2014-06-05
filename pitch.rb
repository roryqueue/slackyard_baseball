require 'pry'
require_relative 'batter'
require_relative 'pitcher'
require_relative 'player'
require_relative 'maths'

class Pitch
  attr_reader :pitch_placement, :swing, :contact

  def initialize(pitcher, batter)
    @pitch_placement = pitcher.placement(pitcher.player.throwing_accuracy)
    @swing = batter.swing?(pitch_placement)
    @contact = batter.contact?(pitch_placement, pitcher.player.throwing_accuracy, batter.player.batting_contact)
  end
end

