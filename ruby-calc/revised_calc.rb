# take the first number DONE
# take modifier DONE
# take the last number DONE
# puts result

# error checking
# user input and modifiers should be checked for proper input type
# the result should set first_number and allow for another modifier and last
  # number so result continues to build until the user decides to clear the calculator
  # create a variable to store the results and then add to it
#make clear work

#Variables
@first_num
@last_num
@result


#Methods
  def menu
    puts "Select an option from the following:"
    puts "1) Use Calculator"
    puts "2) Continue performing math"
    puts "3) Exit"
  end

  def user_selection
    menu
    choice = gets.to_i
    case choice
    when 1
      get_numbers
    when 2
      continue_math
    when 3
      exit
    end
    menu
  end

  def first_num_input
    puts "Type in first value"
    @first_num = gets.chomp.to_i
    puts "#{@first_num}"
  end

  def last_num_input
    puts "Type in next value"
    @last_num = gets.chomp.to_i
    puts "#{@last_num}"
  end

  def get_numbers
    first_num_input
    last_num_input
    do_math
  end

  def do_math
    puts "Type in Modifier"
    input = gets.chomp.to_str
    if input == "+"
      @result = @first_num + @last_num
    elsif input == "-"
      @result = @first_num - @last_num
    elsif input == "/"
      @result == @first_num / @last_num
    elsif input == "*"
      @result = @first_num * @last_num
    else
      puts "invalid entry"
    end
    puts @result
  end

  def continue_math
    puts "Enter number"
    @last_num = gets.to_i
    @first_num = @result
    do_math
  end



# def clear_calc
#   #@first_num = null - do i need to set the variables back to empty?
#   #or can i simply recall the methods so the user can enter new input
#   puts "The calculator has been cleared"
#   exit
# end

user_selection

#better method to use for calculator would to use arguments for methods
#can run loop
