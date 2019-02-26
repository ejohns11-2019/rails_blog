# #comment
# #Variables
#naming variable with multiple words use underscore ex. two_words
# X = 1 #Integers data type

# x = "Hello World" #STring data type
# x = 'Hello World' #same string
# x = "don't"

# #Boolean - true or false
# x = true
# x = false
#
# #Floats - numbers with decimals
# x = 3.14
# x = 1.4
#
# #Data types
# # String
# # integers
# # booleans
# # floats
# # nil - it doesn't exist

#string concatenation - adding two strings together
# x = 'hello world ' + 'its late'
#
# x = 1 - 2
# y = 1* 1
# z  = 1 / 2
# x = 'hello' + '1'
# puts x
# puts y
# puts z

# #Variables in Ruby
# #Scope - ACcess of variable
#
# #Constant - scope is the whole file
# Foo #always starts with a capital letter if var is constant
#
# #Locally Scoped variable - scope access through the method in which it was defined
# x
# foo #lowercase var name
#
# #instance variable - scope of to the class (running instance)
# @foo # @ sympbol with lower case var name
#
# #Global - DONT USE, machine level scope.
# $foo # global var with $ - don't use these!!!!!

# Foo = 1
# @foo = 3
#
# def print_foo #method - must always "end" method
#   foo = 2 #must define any local vars within method.
#   puts Foo
#   puts foo
#   puts @foo
# end
#
# print_foo

# greeting = "hello"
# name = "mars"
# price  = 4.99
#
# puts "Greeting #{name}" # #{} string interpolation - allows us to use vars instead of strings
# puts "#{greeting} #{name}"
#
# puts "$#{price}" #this is how use $ for money w/out turning into a global var
#
# #Methods - grouping into manageable chunks, keep simple -single tasks
#   # def method_name
#   #
#   # end
# def print_hello_world #this is a method without an argument ie. no placeholders to be used later in method
#   puts 'hello world'
# end
# #print_hello_world
#
# planet = 'mars'
# def greet_planet(planet) # () let you bring in var from outside method
#   #the planet in the above line represents the argument - treated the same as the var but is an argument here
#   puts "hello #{planet}"
# end
# #greet_planet('venus') #when calling the method must supply an argument
#
# def triple_my_number(num)
#   num * 3
# end
# #triple_my_number(3)
#
# def odd_or_even(number)
#   #modulo % gives the remainder after dividing
#   # == means equality
#   if number % 2 == 0
#     'even'
#   else
#     'odd'
#   end
# end
# odd_or_even(64)
#
# puts odd_or_even(triple_my_number(3)) #works from inside to out

#to print something to console have 3 ways to do it
#puts - always adds a new line after
#print - won't add a new line
#p - is rarely used, puts the type ie. will print a string with the quotes

#Input
  #gets
  # puts "type here: "
  # input = gets #gets takes in user input
  # puts input #will give whatever user types in

#Conditionals - boolean (check if true or false)
# IF ELSE
# @x = '1'

  # if @x
  #   puts @x
  # elsif @x == '1'
  #   puts 'x is 1'
  # elsif '@x == '2'
  #   puts 'x is 2'
  # else
  #   puts 'not true'
  # end #all conditionals/methods must have an end.

  #CASE STATEMENTS
  # number = 3
  # case number
  #   when 1, 2 #when number == 1 or 2
  #     puts number
  #   when 3
  #     puts 'three'
  #   else
  #     puts 'too high'
  # end

  #TERNARY OPERATORS - another way to write if/else statements (only one condition)
 #  num = 2
 #  if num % 2 == 0
 #    a = 'even'
 #  else
 #    a = 'odd'
 #  end
 #  #assignment  = condition ? (true?) if : else
 # #the first part is the assignment, the condition is if its true print this else this
 #  a = num % 2 == 0 ? 'even' : 'odd' #this is the same as the above if/esle
 #  puts a

 #LOOPS (continues executing until a condition is met, must have an escape)
 #x = 0
 # while x <= 3 #WHILE LOOP will continue while a condition is true
 #   puts x
 #   x += 1 #add the R side to the L and set the value to the variable
 # end
 # #TO EXIT AN INFINITE LOOP do CRL C!!!!!!

 #UNTIL LOOP
 #until this condition is met will run
 # until x > 3
 #   puts x
 #   x += 1
 # end

 #FOR LOOP
 # for x in (0..5) #for x inside of 0 to 5 inclusive
 #   puts x
 # end

 #EACH LOOP
 # (0..5).each do |number| #in the pipes put what we are calling the numbers in ()
 #for each of them reference them as number
 # puts number
 # end
 #
 # (0..5).each { |number| puts number } #when printing only one thing can write this way

#USE these 3 inside conditions and loops
#next - will continue to next available option (next block of code)
#break
#retry

# (0..5).each do |number| #each of those is a number
#   if number % 2 == 0
#     y = 'even'
#   else
#     y = 'odd'
#     next #normally when if/else will exit when meets condition, if use next will continue to next block of code
#   end
#   puts number
# end

# while x <= 10
#   break if x == 5 #once hit break will break out to code block
#   puts x
#   x += 1
# end

# def test_for_bugs
#   if x == 0
#     puts 'bug free'
#   else
#     fix_bug #another method (not created yet)
#     retry #once runs fix_bug will rerun the if statement to retry
#   end
# end

# x = 0
# y = 0
# #NESTED LOOPS - don't do more than 2-3
# #can put loop inside of a loop
# (1..5).each do |i| #i for index
#   puts "in x loop #{i}"
#   x += i
#   (1..2).each do |yi| #index of y
#     puts "in y loop #{yi}"
#     y += yi
#   end
# end
# for every one time your first loop runs it is going to run 2 loops on the second one

#SHELL COMMANDS - use back ticks to run shell commands
 # `make_file = touch ruby2.rb`
# puts `ls`

# puts 'type in a command'
# command = gets
# #puts `man ls` #runs the man ls command in ruby
# puts `man #{command}`

#Ruby has a large library of methods we can use
# str = "Hello Class do not fall asleep"
# puts str.split(" ").last #this is a ruby method where you can split the argument
# #these methods will split the string on the space and then return the last of the string
# #multiple methods in a row is method chaining
# puts str.downcase.split(" ").join('-') #at the end join all together with a -

 #ARRAY - a collection of objects, [] means its an array
 #arrays are ordered, the position is called the index starting at 0
 # array = ['a', 'b', 'c']
 # puts array[0]

 # num_arr = []
 # num_arr << 1 #shovel ie. add whatever on the R into the array on the L
 # num_arr << 2
 # num_arr << 55
 #
 # p num_arr.first #get the first element of the array .last for last element
 # p num_arr[1]
 # p num_arr[40]
