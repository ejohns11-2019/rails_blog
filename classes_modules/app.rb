require_relative 'person' #using class from another file!!
#this tells where to find person file
#if in different folder do '../person'

class App
  attr_accessor :person #person is a whole object here

  def initialize #this is how it knows to go to that method first when start class
    @person = init_person
  end

  def init_person
    puts 'enter your name'
    name  = gets.strip #strip takes away all the spaces behind the user input
    puts 'enter your age'
    age = gets.to_i
    @person = Person.new(name, age) #creating a new person from the other file using the inputs
    puts @person.name
    puts @person.age
  end

end

app = App.new #to call the class
