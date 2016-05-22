class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def set(side)
    if side < 7 and side > 0
      @number_showing = side
    else
      @number_showing = 1
    end
  end

end


my_die = Die.new
puts my_die.showing

my_die.set(9)
puts my_die.showing

my_die.set(4)
puts my_die.showing
