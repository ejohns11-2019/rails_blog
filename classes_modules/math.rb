#Modules - reusable code
  #using over and over again as some sort of library
  #D.R.Y. -don't repeat yourself. don't write same code over and over again.

module Math #capitalize name of module
  def add(num_1, num_2)
    num_1 + num_2
  end

  def subtract(num_1, num_2)
    num_1 - num_2
  end
end

class MathAssignment
  include Math #to use math module in this class, this is when module in same file
  #now have access to both methods: add and subtract

  def first_solution
    add(30, 5) + subtract(3, 20)
  end
end

#to make this work need to initialize the class
assignment = MathAssignment.new #instantiating with .new without passing in any parameters
p assignment.first_solution #calling the method (which uses the module)
