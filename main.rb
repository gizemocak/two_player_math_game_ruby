require './game.rb'
require './player.rb'
require './main.rb'
require './question.rb'



game = Game.new
game.run

# puts game

# current_question = game.current_question
# puts current_question[:question]

# player_answer = gets.chomp

# if player_answer === current_question[:answer].to_s
#   puts "right"
# else 
#   puts "wrong"
# end
