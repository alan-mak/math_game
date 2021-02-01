class Question
  attr_reader :num1, :num2, :ans

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @ans = @num1 + @num2
    puts "What is #{@num1} plus #{@num2} equal to?"
  end
  
  def answer_question
    user_answer = gets.chomp.to_i
    if @ans == user_answer
      puts "Correct answer!"
      true
    else
      puts "LOL you stupid?"
      false
    end  
  end
end