require "./player"
require "./question"

class Game
  def initialize
    @player1 = Player.new('Taylor')
    @player2 = Player.new('Louis')
    @current_player = @player1
  end
  
    # def score
    #   puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
    #   puts "\n"
    #   puts "----- NEW TURN -----"
    #   puts "\n"
    # end


  def turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
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

  end




    # self.turn
    # question = Question.new
    # question.new_question(@current_player.name)
    # answer = gets.chomp.to_i

    # if answer == question.sum
    #   puts "YES! You are correct!"
    #   self.score
    #   self.turn


    # else
    #   puts "Seriously? No!"
    #   @current_player.lives -= 1
    #   self.score
    #   if(@current_player.lives > 0)
    #     self.start_game
    #   else
    #     puts "Game Over"
    #     self.turn
    #     puts "#{@current_player.name} wins with a score of #{@current_player.lives}"
    #   end

    







  




end
