require_relative 'player'
require_relative 'batting_order'

class Team
  attr_accessor :positions, :batting_order, :score, :pitcher

  def initialize(positions, batting_order)
    #for now positions are numeric positions - 1
    @positions = positions
    @batting_order = batting_order
    @score = 0
    @pitcher = positions[0]
  end

end
