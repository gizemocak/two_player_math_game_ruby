require './player.rb'



class Game
  attr_accessor :current_question
  def initialize()
    # @player_lifes = [0,0]
    @players = [Player.new, Player.new]
    @turn = 0
  end

  def run
    puts 'Welcome to the game!'
    while(!game_over?)
      play_turn
    end
  end

  def create_random_question
    rand1 = rand(1..20)
    rand2 = rand(1..20)
    new_question = {question: "What does #{rand1} plus #{rand2} equal?",
    answer: rand1 + rand2} 
    return new_question
  end

  def play_turn
    @turn += 1
    player = @players[@turn % 2]
    puts "In play turn"
    p1 = @players[0]
    p2 = @players[1]

    #create a random question for each turn
    current_question = self.create_random_question
    puts current_question[:question]

    player_answer = gets.chomp

    #check player answer
    #if answer is wrong loose a life
    if player_answer != current_question[:answer].to_s
      #call loose a life method
      player.loose_a_life
      if player = p1
        puts "Player 1: Seriouly? No!"
      elsif player = p2
        puts "Player 2: Seriouly? No!"
      end
      
    else 
      #if answer is right 
      if player = p1
        puts "Player 1: Yes! You are correct"
      elsif player = p2
        puts "Player 2: Yes! You are correct"
      end
    end
    puts "P1:#{@players[0].life} vs P2:#{@players[1].life}"
    puts "---- NEW TURN -----"
  end

  def game_over?
    if @players[0].life === 0 || @players[1].life === 0
      # puts "GAME OVER"
      # puts "Good Bye"
      if @players[0].life === 0
        return "Player 2 wins with a score #{@players[1].life}/3"
      else
        return "Player 1 wins with a score #{@players[0].life}/3"
      end
    end
  end

  def check_question 
    #if rand1 + rand2 === userinput
      
  end
end