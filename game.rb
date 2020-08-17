require_relative './question'
require_relative './player'

# class Game

class Game

  def initialize 
    @player1 = Player.new("Harry Potter")
    @player2 = Player.new("Darth Vader")
    @players = [@player1, @player2].shuffle
    @round = 1
  end

  def next_round
    puts
    puts "**** Round ##{@round} ****"
    @round += 1
    @players.rotate!
  end

  # put game status here 
  def display_game_status
    puts "~~~~~ Status ~~~~~"
    @players.each {|player| puts "#{player.name} Life: #{player.dead? ? "Dead" : player.life}"}
    puts "~~~~~~~~~~~~~~~~~~"
    puts "******************"

  end

  def alive_players
    @players.select {|player| !player.dead?}
  end

  def get_winner
    puts "The winner is #{alive_players.first.name}!"
  end 

  def game_over
    alive_players.count == 1
  end

  # setting the main play flow

  def play 
    until game_over do

      next_round
      
      current_player = @players.first
      prompt = "#{current_player.name}> "
      q = Question.new
      puts "#{current_player.name}: What does #{q.num1} + #{q.num2} equal?"
      print prompt
      answer = $stdin.gets.chomp
      if answer.to_i != q.sum
        puts current_player.wrong_answer
      else 
        puts current_player.right_answer
      end

      display_game_status

      sleep 1

    end

    get_winner

  end

end





# the game class is responsible for:
# displaying math questions.
# display game status
# keeping track of rounds (rotates players)
# Keeping track of player life to call game over once a player hits 0 life.
# ASK FOR INPUT