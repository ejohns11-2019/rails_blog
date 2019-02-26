#Mammal > Cat (everything mammal has cat also has)
#Mammal > Dog > Beagle >...
  #Dog and Cat are siblings, inheriting from Mammal but different
  #Beagle is a grandchild of mammal, it inherits from mammal and dog
#parent can also be called ROOT

class Mammal
  #with attr_accessor able to read and write ie. see the name and age and change them
  attr_accessor :name, :age

  #if want to read not write (ie. see not change)
  # attr_reader :name, :age (can list just one variable this way)

  #if want to write (ie. change) and not read (ie.see)
  #attr_writer :age

  def initialize(name, age) #initially whatever user puts in is name/age
    @name = name
    @age = age
  end

  def breathe #this is what ALL mammals should do
    puts 'inhale and exhale'
  end

  def speak
    raise "you must override this method" #will raise an error everytime you pick this
  end
end

class Cat < Mammal
  def initialize(name, age) #can initialize here
    super(name, age) #bringing down the mammals name and age from above
  end

  def speak #overriding the speak method in mammal
    puts 'meow'
  end
end

keesa = Cat.new('keesa', 4)
# keesa.breathe
# keesa.speak

class Dog < Mammal
  def initialize(name, age)
    super(name, age)
  end

  def speak
    puts 'woof'
  end
end

nora = Dog.new('nora', 1) #if don't do .new it will assume dog is a method
#with .new ruby knows Dog is a class
nora.breathe
nora.speak
