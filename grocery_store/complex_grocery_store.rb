# Allow a user to remove multiple items at once from the cart. QUESTIONS!!!
# Assign the user an amount of money to start. DONE
# Give the user the option to "Check out". Exiting when hit y or n!!!
# If they have enough money, their cart gets cleared and money is subtracted.??
# If they don't have enough money, they have to delete items.
# Apply some sort of coupon system. DONE
# For example, a 20% off coupon that takes the price of all items down by 20%. DONE
# Apply taxes to transaction. DONE
# A menu option that shows a history of all the items purchased. (While the script runs)
# Grocery store items have a quantity. (They can be out of stock) -this is same as library book (true if in stock...)


#Variables
@grocery_items = [
  {item: "bananas", price: 2.99},
  {item: "chips", price: 4.25},
  {item: "milk", price: 3.01}
]

@allowance = 10.0
@cart_items = []
@prices = []
@total_cost

#Methods
def grocery_store_menu
puts "Select an Option from below:"
puts "1) List Items and Price of Items in Grocery Store"
puts "2) Add Item to Cart"
puts "3) Remove Item from Cart"
puts "4) List Items in Cart"
puts "5) Show Total Cost of Items in Cart"
puts "6) Add Item to the Grocery Store"
puts "7) Exit"
puts "8) Checkout"
end

def user_selection
  grocery_store_menu
  choice = gets.to_i
  case choice
  when 1
    list_store_items
  when 2
    add_to_cart
  when 3
    remove_from_cart
  when 4
    list_cart_items
  when 5
    cart_total_cost
  when 6
    add_to_store
  when 7
    puts "Thank you for Shopping"
    exit
  when 8
    check_out
  else
    puts "Invalid Choice"
  end
  user_selection
end


def list_store_items
  @grocery_items.each_with_index do |thing, i| #iterates through each pair of objects
    puts "#{i + 1} Item: #{thing[:item]} costs $#{thing[:price]}" #pulls the item and price from each object
  end
end

def list_cart_items
  @cart_items.each_with_index do |thing, i| #iterates through each pair of objects
    puts "#{i + 1} Item: #{thing[:item]} costs $#{thing[:price]}" #pulls the item and price from each object
  end

end

def add_to_cart
  list_store_items
  puts "Which item would you like to add?"
  choice = gets.to_i #need to add 1 to the input value since zero indexed
  # if choice > 0 && <= @grocery_items.length
  additional_item = @grocery_items[choice -1] #saving hash at index user selected
    #pull item and price from hash in store, save them as variables and use to create new hash and shovel into cart array
  # else
  #   puts "invalid choice"
  #   add_to_cart
  #end
  @cart_items << additional_item
end


def remove_from_cart
  list_cart_items
  puts "Which item would you like to remove?"
  choice = gets.to_i
  @cart_items.delete_at(choice -1)
  remove_more_from_cart
end

def remove_more_from_cart
  puts "Would you like to remove another item from your cart y/n?"
  choice = gets.chomp.to_str
    if choice == "y"
      remove_from_cart #the code is exiting here regardless of whether y/n..
    else
      user_selection
    end

end

def remaining_allowance
  remaining = @allowance - @total_cost #do i need the "#{}" for these variables?
  puts "Allowance remaining is $#{remaining}"
end

def cart_total_cost
  @cart_items.each do |thing|
    @prices.push thing[:price]
    puts "#{thing[:item]}  costs $#{thing[:price]}" #which array is the price pulling from @cart or @price?
  end
  @total_cost = @prices.inject(0, :+)
  puts "The total cost of your items is $#{@total_cost}"

   #@cart_items[:price]
   #iterate for each object in array accessing the price variable and save to be summed
  #access price in each hash and add together
end

def add_to_store
  puts "What item would you like to add to the store?"
  item = gets.to_s
  puts "How much does the item cost?"
  price = gets.to_f
  new_item = { item: "#{item}", price: "#{price}" }
  @grocery_items << new_item
  #creating a new hash with item and price, adding to store array
end

def calc_tax
  @total_cost == @total_cost * 0.93
  puts "The total cost of your items is $#{@total_cost} after tax"
end

def apply_discount
  puts "Do you have a discount y/n?"
  discount = gets.chomp.to_str
    if discount == "y"
      puts "What is the discount amount?"
      input = 100 - gets.chomp.to_f
      @total_cost = input * @total_cost / 100
      puts @total_cost
    else
      puts "No discount applied"
    end
end


def check_out #problem need the remaining_allowance to update to most recent values
  cart_total_cost
  apply_discount
  calc_tax
  if @allowance >= @total_cost
    remaining_allowance
    @cart_items.clear

  else
    puts "Not enough money. Please remove items from your cart"
    remove_from_cart
  end
end




user_selection
