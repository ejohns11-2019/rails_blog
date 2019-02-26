
class Parent
  def use_parent_method
    puts 'this is from the parent'
  end

  def overridable
    puts 'This is the parent'
  end

  def alterable
    puts 'change me'
  end
end

class Child < Parent #class child is inheriting from class parent
#everything the parent has, the child also has
  def overridable #creating a method with the SAME Name will replace the parent method
    puts 'this is the child'
  end

  def alterable
    puts 'i am the child'
    super() #use this to use everything inside of parent and child method
    puts 'more info here'
  end

end

class Grandchild < Child
  #the grandchild would inherit everything the parent and the child has

end

p = Parent.new #create a new instance
c = Child.new #if using the child don't have to create this instance
#because has the instance for the parent

# p.use_parent_method
# c.use_parent_method

# p.overrideable
# c.overrideable

p.alterable
c.alterable
