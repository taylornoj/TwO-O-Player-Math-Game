require 'pp';

class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  
  end

  def new_question(name)
    puts "#{name}: What does #{num1} plus #{num2} equal?"
  end

  def sum
    @num1 + @num2
  end


end
