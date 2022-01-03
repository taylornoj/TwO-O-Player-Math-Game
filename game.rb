require "./player"
require "./question"

class Game
  
  def initialize
    @player1 = Player.new('Taylor')
    @player2 = Player.new('Louis')
    @current_player = @player1
  end
     
    def start_game
      puts "----- TwO-O-Player -----"
      puts "\n"
      puts "Player 1: Please enter your name"
      @player1 = Player.new(gets.chomp)
      
      puts "Player 2: Please enter your name"
      @player2 = Player.new(gets.chomp)
      
      puts "Let's play!"
      puts "\n"
      @current_player = @player1
      
      game_play while (@player1.lives > 0 && @player2.lives > 0)
      end_game
    end

    def turn
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end

  def game_play
    question = Question.new
    puts "\n"
    puts "----- NEW TURN -----"
    puts "\n"
    puts "#{@current_player.name}: What does #{question.num1} plus #{question.num2} equal?"
    answer = gets.chomp.to_i

    if answer == question.solution
      puts "\n"
      puts "YES! You are correct!"
      "\n"
    else
      puts "\n"
      puts "WRONGO!"
      @current_player.lives -= 1
      
    end
    puts "\n"
    puts "SCORE: #{@player1.name}: #{@player1.lives}/3 -VS- #{@player2.name}: #{@player2.lives}/3"
    turn
  end

  def end_game
    puts "----- GAME OVER -----"
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "\n"
  end

end
