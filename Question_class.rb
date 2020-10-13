class Question
  attr_reader :question, :answer
  
  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @question = "What is #{@num1} + #{@num2}?"
    @answer = @num1 + @num2
  end
  
  def is_correct(input)
    @answer == input
  end
end

