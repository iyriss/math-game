require "./Player_class"
require "./Question_class"

class Game
  attr_accessor :player1, :player2, :current_player
  
  def initialize
    @player1 =  Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
    # @game_over = false 
  end
  
  def question
    question1 = Question.new()
    print "#{@current_player.print_name} : "
    puts question1.question
    # puts question1.answer
    input = gets.chomp.to_i
    # puts input == question1.answer
    # puts question1.is_correct(input) 
    if question1.is_correct(input) 
      puts "YES! You are correct."
      true
    else 
      puts "Seriously? No!"
      false
    end
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  def print_lives
    if (!@player1.is_alive? || !@player2.is_alive?)
      print "#{current_player.player} loses with a score of #{@current_player.life}/3 and "
      switch_player()
      puts "#{current_player.player} wins with a score of #{@current_player.life}/3!"
      puts "----GAME OVER titiririree----"
      puts "Good bye!"
    else
      puts "Player 1: #{@player1.life}/3 vs Player 2: #{@player2.life}/3"
      puts "----NEW TURN----"
    end
  end

  def start_game
    while ((@player1.is_alive?) && (@player2.is_alive?)) 
      is_answer_correct = question()
      if is_answer_correct == false
        @current_player.lose_life()
        # puts player1.life
      end
      print_lives()
      switch_player()
      # @game_over = true
    end
  end

end

