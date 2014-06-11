require_relative 'base'
require 'pry'

class BasePath
  attr_reader :first, :second, :third
  attr_accessor :run_count

  def initialize
    @first = Base.new
    @second = Base.new
    @third = Base.new
    @run_count = 0
  end

  # def add_run
  #   run_count ||= 0
  #   run_count += 1
  # end

  # def single(player)
  #   if third.man_on != nil
  #     add_run
  #     third.man_on = nil
  #   end
  #   if second.man_on != nil
  #     add_run
  #     second.man_on = nil
  #   end
  #   if first.man_on != nil
  #     second.man_on = first.man_on
  #     first.man_on = nil
  #   end
  #   first.man_on = player
  # end

  # def double(player)
  #   if third.man_on != nil
  #     add_run
  #     third.man_on = nil
  #   end
  #   if second.man_on != nil
  #     add_run
  #     second.man_on = nil
  #   end
  #   if first.man_on != nil
  #     add_run
  #     first.man_on = nil
  #   end
  #   second.man_on = player
  # end

  # def triple(player)
  #   if third.man_on != nil
  #     add_run
  #     third.man_on = nil
  #   end
  #   if second.man_on != nil
  #     add_run
  #     second.man_on = nil
  #   end
  #   if first.man_on != nil
  #     add_run
  #     first.man_on = nil
  #   end
  #   third.man_on = player
  # end

  # def homerun(player)
  #   if third.man_on != nil
  #     add_run
  #     third.man_on = nil
  #   end
  #   if second.man_on != nil
  #     add_run
  #     second.man_on = nil
  #   end
  #   if first.man_on != nil
  #     add_run
  #     first.man_on = nil
  #   end
  #   add_run
  # end

  # def walk(player)
  #   if third.man_on != nil && second.man_on != nil && first.man_on != nil
  #     add_run
  #     third.man_on = nil
  #   end
  #   if second.man_on != nil
  #     third.man_on = second.man_on && first.man_on != nil
  #     second.man_on = nil
  #   end
  #   if first.man_on != nil
  #     second.man_on = first.man_on
  #     first.man_on = nil
  #   end
  #   first.man_on = player
  # end
end
