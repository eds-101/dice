class Dice

  def roll(no_of_rolls = 1)
    a = [1, 2, 3, 4]
    score = 0
    
    no_of_rolls.times do
      score += a.sample
      #p score
    end
    
    score
  end


end