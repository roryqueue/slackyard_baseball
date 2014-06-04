require_relative 'batter'
require_relative 'pitcher'
require_relative 'player'
require_relative 'maths'

class AtBat

  def initialize(batter, pitcher)
  @batter = batter
  @pitcher = pitcher
  @balls = 0
  @strikes = 0
  end

  def execute
    until hit == true || strikeout == true || walk == true
    pitch = self.pitcher.placement(player.throwing_accuracy)
    end
  end

  def hit?

  end

  def strikeout?

  end

  def walk?

  end

end
