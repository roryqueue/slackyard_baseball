require 'pry'

require_relative 'player'
require_relative 'maths'

class Pitch
  attr_reader :pitcher, :batter, :placement, :swing, :contact, :fair_or_foul, :hit_or_out, :hit_type

  def initialize(pitcher, batter)
    @pitcher = pitcher
    @batter = batter
    @placement = pitcher.pitch_placement
    @swing = batter.swing?(placement)
    @contact = contact_check
    @fair_or_foul = fair_foul_check
    @hit_or_out = hit_checker
    @hit_type = extra_bases_checker
  end

  def contact_check
    if swing == true
      ct_check = batter.contact?(placement, pitcher.throwing_accuracy)
    else ct_check = nil
    end
    ct_check
  end

  def fair_foul_check
    if contact == true
      ff_check = batter.fair_ball?(pitcher.throwing_velocity)
    else ff_check = nil
    end
    ff_check
  end

  def hit_checker
    if fair_or_foul == :fair
      hit = batter.hit?
    else hit = nil
    end
    hit
  end

  def extra_bases_checker
    if hit_or_out == :hit
    bases = batter.extra_bases?
    else bases = nil
    end
    bases
  end

end

