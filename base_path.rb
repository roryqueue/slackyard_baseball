require_relative 'base'

class BasePath
  attr_reader :first, :second, :third, :runs

  def initialize
    @first = Base.new
    @second = Base.new
    @third = Base.new
    @runs = 0
  end

  def single(player)
    if third.man_on != nil
      @runs += 1
      third.man_on = nil
    end
    if second.man_on != nil
      @runs += 1
      second.man_on = nil
    end
    if first.man_on != nil
      second.man_on = first.man_on
      first.man_on = nil
    end
    first.man_on = player
  end

  def double(player)
    if third.man_on != nil
      @runs += 1
      third.man_on = nil
    end
    if second.man_on != nil
      @runs += 1
      second.man_on = nil
    end
    if first.man_on != nil
      @runs += 1
      first.man_on = nil
    end
    second.man_on = player
  end

  def triple(player)
    if third.man_on != nil
      @runs += 1
      third.man_on = nil
    end
    if second.man_on != nil
      @runs += 1
      second.man_on = nil
    end
    if first.man_on != nil
      @runs += 1
      first.man_on = nil
    end
    third.man_on = player
  end

  def homerun(player)
    if third.man_on != nil
      @runs += 1
      third.man_on = nil
    end
    if second.man_on != nil
      @runs += 1
      second.man_on = nil
    end
    if first.man_on != nil
      @runs += 1
      first.man_on = nil
    end
    @runs += 1
  end

  def walk(player)
    if third.man_on != nil
      @runs += 1
      third.man_on = nil
    end
    if second.man_on != nil
      third.man_on = second.man_on
      second.man_on = nil
    end
    if first.man_on != nil
      second.man_on = first.man_on
      first.man_on = nil
    end
    first.man_on = player
  end

end
