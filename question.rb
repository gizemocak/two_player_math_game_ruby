
class Question
  attr_accessor :current_question
  def initialize(player)
    @current_question = current_question
  end

  def random_question
    rand1 = rand(1..20)
    rand2 = rand(1..20)
    return "What does #{rand1} plus #{rand2} equal?"
  end
end