#Brain Teaser
#take an array of integers in a method
#seperate each integer by evens and odds
#return both the collection of even and odds

@arr = []
@result = []
@even_arr = []
@odd_arr = []

odd_array = original_array.select {|element| elemnt % 2 != 0}
even_array = orignial_array.select {|element| element % 2 == 0}

#Alternate solutin
test_array.each do |x|
  if x % 2 == 0
    puts 'even'
  else
    puts 'odd'
  end

#even intgers can be divided by 2 with % = 0
#odd integers have a remainder when / 2
#My attempted solution
# def check_remainder
#   @arr.each do |integer|
#     integer % 2 = @result
#     if integer % 2 == 0
#       even << num
#     end
#     else
#       @arr.each do |integer|
#       @result != 0
#       @odd_arr << @result
#     end
#     end
#   end
#   puts @even_arr
#   puts @odd_arr
# end
