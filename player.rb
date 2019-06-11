# require 'active_support/all'

class Player 
  attr_reader :life, :name
  
  def initialize(name)
    @name = name
    @life = 3
  end
  
  def loose_a_life
    @life -= 1
  end

end

