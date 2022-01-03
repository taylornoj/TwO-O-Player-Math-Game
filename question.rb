class Question

  attr_accessor :num1, :num2, :solution

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @solution = @num1 + @num2
  end
  
end
