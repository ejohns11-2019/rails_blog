#start by writing methods THEn go in and add classes where see repitition

#Must use classes, use inheritance? use instance methods as well as class methods
#user chooses from a list of main dishes
#user chooses 2 side dish items
#computer repeats users order (remember instances...)
#computer total lunchs items and displays total
@main_dish = [ {item: "spaghetti", price: 8.49},
  {item: "Chicken Soup", price: 4.99},
  {item: "Peanut Butter Sandwhich", price: 5.50}
]

@side_dish = [ {item: "french fries", price: 2.50},
  {item: "salad", price: 3.00},
  {item: "chips", price: 2.50},
  {item: "frui", price: 3.25}
]

@order_items = []


class Menu
  attr_accessor :user, :main_choice, :side_choice

  def initialize( user, main_choice, side_choice)
    @user = user
    @main_choice = main_choice
    @side_choice = side_choice
  end

  def user_name
    puts "What is the name of the person ordering?"
    @user = gets.chomp.to_str
  end

  def list_main_dish
    @main_dish.each_with_index do |thing, i|
      puts "#{i +1}) Main Dish: #{thing[:item]} Price: #{thing[:price]}"
    end
  end

  def list_side_dish
    @side_dish.each_with_index do |thing, i|
      puts "#{i + 1}) Side Dish: #{thing[:item]} Price: #{thing[:price]}"
    end
  end

  # def user_selection
  #   puts "Which dish would you like to order?"
  #   choice = gets.to_i
  # end

  def add_to_order(add_item)
    add_main = @main_dish[choice - 1]
    @order_items << add_item
  end

  # def user_selection
  #   lunch_menu
  #   choice = gets.to_i
  #   case choice
  #   when 1
  #
  #   end
  # end
end

#New class for Main dish
class Order < Menu
  def order_main
    puts "Choose a main dish from the following:"
    list_main_dish
    choice = gets.to_i
    add_item = @main_dish[choice - 1] #with add_item var be access in the parent method
    add_to_order
  end

end

#create a class containing main/side dish
#create a class for order that inherits main/side
# += array of order



# new_order = Main_dish.new("Emma", PROBLEM: want to be able to use methods
#to get the input of main dish and side here, cant use @var as arguments thoug


#main menu with order, repeat order?, total cost with items listed
#user picks main dish from an array of dishes with hash (dish and price)
#user picks side dish from an array of dishes with hash (dish and price)
#repeat side dish choice
#store as user order
