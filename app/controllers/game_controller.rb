class GameController < ApplicationController

  def new
    vowels = %w[A E I O U]
    @letters = Array.new(5) { vowels.sample }
    @letters += Array.new(5) { (('A'..'Z').to_a - vowels).sample }
    @letters.shuffle!
  end

end
