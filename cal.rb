

class Main_calculator 

  def initialize(first_number,second_number)
   @@first_number=first_number
   @@second_number= second_number
  end
  def display
    #overrride
  end
  
  def operation
    #override
  end
end

class Addition  < Main_calculator

  def initialize
   
  # puts "addition constructor"
  end

  def operation
      @@first_number+@@second_number
  end
  def display
   #puts "Addition Result is #{operation}"
  end
end

class Subtraction < Main_calculator


  def initialize
   
   #puts "Subtraction constructor"
  end

  def operation
      @@first_number-@@second_number
  end
  def display
   puts "Subtraction Result is #{operation}"
  end
end

class Multiplication < Main_calculator
def initialize
   
  # puts "Multiplication constructor"
  end

  def operation
      @@first_number*@@second_number
  end
  def display
   puts "Multiplication Result is #{operation}"
  end

end
class Divison < Main_calculator
def initialize
   
   puts "Divison constructor"
  end

  def operation
      @@first_number/@@second_number
  end
  def display
   puts "v Result is #{operation}"
  end

end



class Driver  <Main_calculator


def initialize(first_number,second_number)
  obj = Main_calculator.new(first_number,second_number)
  @add = Addition.new
  @sub = Subtraction.new
  @div = Divison.new
  @mul = Multiplication.new
end

  def operation
    @add.operation
    @sub.operation
    @div.operation
    @mul.operation
  end

def display
   @add.display
   @sub.display
   @div.display
   @mul.display
  end
end

#main Code here

puts "Enter First Number :"
first_number= gets.to_i
puts "Enter Second Number :"
second_number = gets.to_i

obj = Driver.new(first_number,second_number)
obj.operation
obj.display




