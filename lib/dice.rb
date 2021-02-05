class Dice
  attr_reader :record

  def initialize
    @record = []
    @dice_six_sides = [1, 2, 3, 4, 5, 6]
    @score = 0
  end

  def roll(no_of_rolls = 1)
    no_of_rolls.times do
      @score += @dice_six_sides.sample
      #p score
    end
    record(@score)
    @score
  end

  def record(score)
    @record.push(score)
  end

  def view_current_score
    @record.sum
  end

  def view_history
    @record.each {|score| puts "#{score}"}
  end  

end