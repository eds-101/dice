class Dice
  attr_reader :record

  def initialize
  @record = []
  end

  def roll(no_of_rolls = 1)
    a = [1, 2, 3, 4, 5, 6]
    score = 0
    
    no_of_rolls.times do
      score += a.sample
      #p score
    end
    record(score)
    score
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