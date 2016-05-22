class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @oranges = 0
  end

  def height
    @height
  end

  def one_year_passes
    @oranges = 0  #all fruit (if any) falls off
    if @age <= 100
      @age += 1
      @height += 0.5
      #fruit production section
      if @age < 2
        @oranges = 0
      elsif @age < 5
        @oranges += 10
      else
        @oranges += 20
      end
    else
      puts "The tree has died"
      exit
    end
    
  end

  def count_the_oranges
    @oranges
  end

  def pick_an_orange
    if @oranges > 0
      @oranges -= 1
      puts "The orange you picked was sweet and juicy!"
    else
      puts "There are no oranges to pick!"
    end
  end
end

my_tree = OrangeTree.new

puts my_tree.height
puts my_tree.count_the_oranges

puts

my_tree.one_year_passes
puts my_tree.height
my_tree.pick_an_orange
puts my_tree.count_the_oranges

puts

7.times{my_tree.one_year_passes}
puts my_tree.height
puts my_tree.count_the_oranges
my_tree.count_the_oranges
my_tree.pick_an_orange

puts

95.times{my_tree.one_year_passes}
