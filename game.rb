require './player.rb'



class Game
  attr_accessor :current_question
  def initialize()
    # @player_lifes = [0,0]
    @players = [Player.new, Player.new]
    @turn = 0
  end
  
  # current_player = 1
  # def current_player 
  #   return @players[current_player]
  # end

  # def next_player
  #   return @players[current_player+1)%@players.size]
  # end
  # def turnControl(self): 
  #   self.x += 1 
  #   return (self.x%2 and 1) or 2 
  # end
  
  def run
    puts 'welcome to the game!'
    while(not game_over?)
      play_turn
    end
  end

  def play_turn
    @turn += 1
    player = @players[@turn % 2]
    #create a random question for each turn
    question = self.create_random_question

    #player answer
    player_answer = gets.chomp
    #check player answer
    if player_answer === current_question[:answer].to_s
      puts "right"
    else 
      puts "wrong"
    end

    puts "P1:#{@players[0].life} vs P2:#{@players[1].life}"
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

  def create_random_question
    rand1 = rand(1..20)
    rand2 = rand(1..20)
    new_question = {question: "What does #{rand1} plus #{rand2} equal?",
    answer: rand1 + rand2} 
    puts new_question
  end

  def check_question 
    #if rand1 + rand2 === userinput
      
  end
end