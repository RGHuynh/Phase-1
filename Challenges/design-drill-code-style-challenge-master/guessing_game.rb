class GuessingGame
  valid_numbers = (1..100).to_a

  def initialize answer 
    @answer = answer
    @solved = false
    raise "Answer must be between 1 and 100" unless valid_numbers.include? @answer
  end

  def guess (number)
    if number == @answer 
      @solved = true
      :correct
    elsif (number > @answer) 
      @solved = false
      :high
    elsif(number < @answer)
      @solved = false
      :low
    end
  end

  def solved?
    @solved
  end
end
