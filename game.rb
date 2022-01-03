require "./player"
require "./question"

class Game
  def initialize
    @player1 = Player.new('Taylor', 3)
    @player2 = Player.new('Louis', 3)
    @current_player = @player1
  end
  
    def score
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      puts "\n"
      puts "----- NEW TURN -----"
      puts "\n"
    end


  def turn
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def start_game
    puts "----- TwO-O-Player -----"
    puts "\n"
    self.turn
    question = Question.new
    question.new_question(@current_player.name)
    answer = gets.chomp.to_i

    if answer == question.sum
      puts "YES! You are correct!"
      self.score
      self.start_game

    else
      puts "Seriously? No!"
      @current_player.lives -= 1
      self.score
      puts "#{@current_player.name} wins with a score of #{@current_player.lives}"
    end







  end





end
