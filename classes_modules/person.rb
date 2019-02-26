# #CLASsES - blueprints of objects
# # => classes have methods within them
#anytime you use an instance var @var you are using them inside a class
#
#Refactoring code = cleaning it up
class Person #best to name class with Capitalized name of file
  attr_accessor :name, :school #list attributes
#replaced role in the attributes by having its own class

  def initialize(name, school) #initialize variables
    @name = name #variables coming in
    @school = school #variables coming it
    #these instance variables will give access to the attributes
  end #this will be its own class

  def greet
    raise 'invalid role'
  end
end

class Student < Person
  def greet
    puts "hello, my name is #{name}, and i attend school at #{school}"
  end
end

class Developer < Person
  def greet
    puts "hello, my name is #{name}, and i develop at #{school}"
  end
end

class Teacher < Person
  def greet
    puts "hello, my name is #{name}, and i teach at #{school}"
  end
end


s = Student.new('bob', 'mtn view') #instead of person.new, student.new eliminates case statement
# d = Person.new('jane', 'developer', 'mtn top view')
# t = Person.new('jo', 'teacher', 'mtn bottom view')

s.greet
# d.greet
# t.greet


# class Person #best to name class with Capitalized name of file
#   attr_accessor :name, :age #list attributes
#
#   def initialize(name, age) #initialize variables
#     @name = name #variables coming in
#     @age = age #variables coming it
#     #these instance variables will give access to the attributes
#   end
#
#   def increase_age(num)
#     @age += num #increasing age var by whatever num is passed into method
#   end


# jake = Person.new('jake', 43) #need to pass in name and age arguments
# #name of class.new - means creating a new person
# p jake.name
# p jake.age #can print out his name and any attribute
# jake.increase_age(4) #jumping to increase_age method
# p jake.age #gives new age after calling increase_age(4) method

# class Dog
#   attr_accessor :name, :breed
#
#   def initialize(name, breed)
#     @name = name
#     @breed = breed
#   end
#
# #can have 2 types of methods
# #instance method
#   #instance method pertains to a PARTICULAR DOG - a particular type of objects
#   def info
#     puts "#{name} is the breed of: #{@breed}" #this is the instance var of breed
#   end
#
# #class methods #starts with self.
#   #use CLASS method if it pertains to all DOGS - all of a particular object
#   def self.bark
#     puts "Woof"
#   end
#
# end
#
# jake_the_dog = Dog.new('jake', 'bulldog') #.new instantiates it
# jake_the_dog.info #only works for a particular dog breed
#
# Dog.bark #calls the class method
# #can't call an instance and class method together since instance is for specific dog/instance of object and class is for object as a whole
#
# #use classes to make an instance of a particular object or when trying to do something to an object
