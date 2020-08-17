class Player

  attr_accessor :name, :life

  def initialize(name)
  @name = name
  @life = 3
  end

  def name 
    @name
  end

  def life
    @life
  end

  def dead?
    @life == 0
  end

  def wrong_answer
    puts "WRONG! Loses a life. Ouch!"
    @life -= 1
  end

  def right_answer
    print "CORRECT!!"

  end

end

# test = Player.new("George")
# puts test.name