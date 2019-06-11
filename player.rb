# require 'active_support/all'

class Player 
  attr_reader :life
  def initialize
    @life = 3
  end
  
  def loose_a_life
    @life -= 1
  end

end

