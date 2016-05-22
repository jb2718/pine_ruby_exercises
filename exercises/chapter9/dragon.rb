class Dragon
  def initialize name
    @name = name
    @asleep =  false
    @stuff_in_belly = 10 #she is full
    @stuff_in_intestine = 0 #she doesn't need to go
  
    puts "#{@name} is born!"
  end

  def feed
    puts "You're feeding #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You're walking #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke..."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air"
    puts "#{@name} giggles, singeing your eyebrows"
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently"
    @asleep = true
    puts "She dozes off briefly"
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private #these methods are internal to dragon object

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "She wakes up suddenly!"
      end
      puts "#{@name} is starving, in desperation she eats you!"
      exit #Quit the program
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident"
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "She wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles"
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "She wakes up suddenly!"
      end
      puts "#{@name} does the potty dance"
    end
  end
end


pet = Dragon.new('Sheila')
pet.feed
pet.walk
pet.toss
pet.rock
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
