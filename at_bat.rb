require_relative 'batter'
require_relative 'pitcher'
require_relative 'player'
require_relative 'maths'

class AtBat
  attr_reader :pitcher, :batter
  attr_accessor :count, :result

  def initialize(pitcher, batter)
    @batter = batter
    @pitcher = pitcher
    @count = Count.new
    play
  end

  def play
    pitch = Pitch.new(pitcher, batter)
    update_count(pitch)
    until result_test(pitch) != nil
    pitch = Pitch.new(pitcher, batter)
    update_count(pitch)
    end
  end

  def update_count(pitch)
    count.pitches += 1
    if pitch.swing == false
      if pitch.placement == :strike
        count.strikes += 1
      elsif pitch.placement == :ball
        count.balls += 1
      end
    elsif pitch.swing == true
      if pitch.contact == false
        count.strikes +=1
      elsif pitch.contact == true && pitch.fair_or_foul == :foul && count.strikes < 2
        count.strikes += 1
      end
    end
  end

  def strikeout?
    count.strikes >= 3
  end

  def walk?
    count.balls >= 4
  end

  def result_test(pitch)
    result = nil
    if pitch.fair_foul_check == :foulout || pitch.hit_or_out == :out || strikeout? == true
      result = :out
    elsif pitch.hit_or_out == :hit
      result = pitch.hit_type
    elsif walk? == true
      result = :walk
    end
    @result = result
    result
  end

end
