# #everything inside of the ruby language is considered an object (ie. object oriented programming)
# #Arrays
# #Hashes
# #Ruby Gems
# #Assignment
#
# #ARRAYS - collection of objects, ordered by zero-based index!
# arr = []
# arr = Array.new() => [] #another way to create an array
# arr = ["apple", "Orange", "pear"]
# arr = Array.new() => ["apple", "orange", "pear"]
# arr = ["apple", 1, {}, [], 1.3] #arrays can have all data types
#
# arr[] #to access a certain position in the array call the index
# arr.first #access first
# arr.last #access last

#ITERATE THROUGH THE ARRAY - ie. how to go through each one of the values
# arr = ["a", "b", "c"]
# arr.each do |letter| #how to go through each item (each) and in the pipes references each item as letter
#   puts letter
# end

#EACH reference array items WITH INDEX
# arr.each_with_index do |letter, i| #going through referencing each as letter going through i for index
#   #referencing each in the array as letter AND the POSITION its in
#   #the first item in pipes references each item as go through, the 2nd in pipes references position
#   puts "#{i + 1}. #{letter}" #brings each item and its position as a string
# end #doing i + 1 makes the position reader friendly (ie. not zero based)

# new_arr = arr.map { |letter| letter.to_i } #taking each item as letter and casting to be an integer
# to_s #translates (cast) to string
# to_i #cast to integer, when convert string to integer shows as zero
# to_f #cast to a float
# puts arr
# puts new_arr

#SELECTING CERTAIN ARRAY ITEMS
# another_arr = [1, 2, 3, 4, 5]
# new_arr = another_arr.select { |num| num % 2 == 0 }
# #select takes an array and only select code block after pipes ie. num%2 ==0
# puts new_arr #this only gives the even numbers

#NOT INCLUDING CERTAIN ARRAY ITEMS
# another_arr = [1, 2, 3, 4, 5]
# new_arr = another_arr.reject { |num| num % 2 == 0 }
# puts new_arr #this will reject all the items % == 0 giving only odd numbers

#PIPES - certain things REQUIRE pipes, its essentially the same as methods using parenthesis
  #pipes act like taking arguments
#EXCEPT || means OR ex. if num == 0 || num == 10
# && means AND

#MODIFYING ARRAYS
# arr = ['bob', 'bobby', 'richard']
#
# arr << "alexander" #shovel mothod to add to END of array
# arr.unshift("3.14") #add to the front of array
#
# arr.shift #remove from front of array
# arr.pop #remove from end of array
#
# arr.insert(1, "z") #add to the array with position, first is position, 2nd is what inserting
# #this means that everything to the right of it WILL CHANGE POSITION/INDEX

num_arr = [1, 2, 3]

# new_arr = num_arr.rotate #shift all of the element positions to the Left
# new_arr = num_arr.reverse #reverses the item order

# arr = ['B', 'Z', 'A', 'b', 'a'].sort #can sort strings alphabetically, with numbers sorts lowest to highest
#upper vs lower case DOES matter, make sure all same case

# num_arr.delete_at(1) #to delete the element at a certain position in the array
# #if print the above code prints out what is deleted
# p num_arr

# num_arr.clear #changes array to an EMPTY array
# p num_arr

# p ['A', 'B', 'C'].sample #gets a RANDOM value from the array
# p ['A', 'B', 'C'].join(',') #joins each of the values into a string separated by commas

# p ['a', 1, [2, 'b'], [3, 'c']].flatten #flattens into one array

# p [1, 2, 2, 3, 3].uniq #doesn't print out duplicate values
#
# p ['A', 'B', 'C'].shuffle #shuffles the array
# p ['A', 'B', 'C'].count #counts number of items
#
# .nil? - asking if this array is nil
# empty? - is array empty ie. [] ?
# any? - check if there are values inside of array [a, b, c]?
# none? - is array []

#there are many more helper methods on ruby docs online


#HASHES
#Hashes are key value pairs {}
# { first: 'Henry', last: 'doane' }
# #  Key    value    key    value
# { first => 'henry', last => 'doan' } #this means the same as above, just older version
#
# hash={}
# hash = Hash.new #this is the ruby helper method to create an empty hash

# hash = { 1 => '1', 'chips' => '2' } #best to leave KEYs as integers or strings
# p hash['chips'] #to get a specific VALUE grab the KEY
# p hash.keys #puts all keys into an array
# p hash.values #puts all values into an array

# hash = { name: 'bob', email: 'bob@email.com', phone: '123-123-123' }
# hash[:phone] #if hash written with colons then grab the key using a colon
#
# #change a value in the hash
# hash[ :name] = 'bobby'
# p hash[:name]
#
# hash[:active] = true #adding a key, name a key that is not already in the hash and give it a value
# p hash

# contacts = [{ name: 'bob', email: 'bob@email.com', phone: '123-123-123' },
#   { name: 'bob', email: 'bob@email.com', phone: '123-123-123' },
#   { name: 'bob', email: 'bob@email.com', phone: '123-123-123' }]
#   #this is an array of hashes, can use the array methods above to reference
#
#   p contacts.first[:email] #from first contact get the email

# languages  = {
#   language: {
#     ruby: {
#       made: 1995, level: 5
#     },
#     java: {
#       made: 1991,
#       level: 100
#     }
#   }
# }
# #nested hashes, work from the outside in
# p languages[:language][:ruby][:level]
#
# languages[:language].delete(:java) #to delete key value pair, .delete and name of key
# p languages
#
# # langauges.clear #will empty hash
#
# p languages[:language].has_key? :js #checking to see if has key of js

#ITERATING HASHES
condiments = {
  ketchup: 'yum',
  mayo: 'sometimes yum',
  pickles: 'gross'
}

# condiments.each do |key, value| #since hash not iterating through item and index
#   #iterating through key and value
# #better to be descriptive with key value pairs so this is better:
# condiments.each do |condiment, taste|
#   puts " #{key} is #{value}"
# end
h1 = { a: '2', b: '4'}
h2 = {c: '1', d: '2'}

# p h1.merge(h2) #can combine hashes
