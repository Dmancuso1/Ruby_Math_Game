# created questions that choose two numbers from 1 .. 20.

class Question

  def initialize
    @num1 = rand 1..20
    @num2 = rand 1..20
  end

    def num1
      @num1
    end

    def num2
      @num2
    end

  def sum 
    num1 + num2
  end


end

# question1 = Question.new
# puts question1.show_question
# puts question1.sum