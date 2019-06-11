require './player.rb'



class Game
  attr_accessor :current_question
  def initialize()
    @players = [Player.new(1), Player.new(2)]
    @turn = 0
  end

  def run
    puts 'Welcome to the game!'
    while(!game_over?)
      play_turn
    end
    if @players[0].life === 0
      puts"Player 2 wins with a score #{@players[1].life}/3"
    else
      puts "Player 1 wins with a score #{@players[0].life}/3"
    end
    puts "-----GAME OVER-----"
  end

  def create_random_question
    #make it a class
    rand1 = rand(1..20)
    rand2 = rand(1..20)
    new_question = {question: "What does #{rand1} plus #{rand2} equal?",
    answer: rand1 + rand2} 
    return new_question
  end

  def play_turn
    @turn += 1
    player = @players[@turn % 2]
    puts "---- NEW TURN -----"

    #create a random question for each turn
    current_question = self.create_random_question
    puts current_question[:question]

    player_answer = gets.chomp

    #check player answer
    #if answer is wrong loose a life
    if player_answer != current_question[:answer].to_s
      #call loose a life method
      player.loose_a_life
      puts "Player #{player.name}: Seriouly? No!"
    else 
      puts "Player #{player.name}: Yes! You are correct"
    end
    puts "P1:#{@players[0].life} vs P2:#{@players[1].life}"
  end

  def game_over?
    @players[0].life === 0 || @players[1].life === 0
  end

end