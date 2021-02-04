require "dice"
describe Dice do
  describe '#roll' do  
    it "allows the user to roll the dice" do
      expect(subject).to respond_to(:roll) # checks method is present, not the behavior
    end

    it "rolls the dice and gives us a number between 1 and 6" do
      expect(subject.roll).to be_between(1, 6)
    end

    it "can roll dice multiple times" do
      # subject.dice_rolls
      expect(subject.roll(3)).to be_between(3, 18)
      expect(subject.roll(6)).to be_between(6, 36)
    end
  end

  describe '#view_history' do
    it "records each dice roll" do
      dice = Dice.new
      check = dice.roll(1)
      expect(dice.view_history[0]).to eq check
    end
  end

  describe '#view_current_score' do
    it "gets user's current score" do
      dice = Dice.new
      check = dice.roll
      expect(dice.view_current_score).to eq check
    end
  end
end


# describe or diagram the process of TDD. Your diagram might 
# include: User story, Writing a test, Green, Red, Refactor, 
# Write code, Feature test

