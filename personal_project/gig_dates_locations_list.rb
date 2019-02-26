#Gabriel Music Dates and Locations
@dates_locations = []

#2 types of input for array item: location & date of gig
#must turn location input into string
#must turn date input into date
#create menu where can:
  #view dates/locations
  #enter new date/location
  #delete date/location
  #exit menu

def menu
  puts "Select one of the following:"
  puts "1) View Dates and Locations of Music Gigs"
  puts "2) Add New Date and Location"
  puts "3) Delete a Date and Location"
  puts "4) Exit"
end

def user_menu_selection
  menu
  choice = gets.to_i
  case choice
  when 1
    view_dates_locations
  when 2
    add_date_location
  when 3
    delete_date_location
  when 4
    puts "Goodbye"
    exit
  else
    puts "Invalid choice"
  end
  user_menu_selection
end

def print_dates_locations_list(list)
  list.each_with_index { |date_location, index| puts "#{index + 1} #{date_location}" }
end

def view_dates_locations
  list = @dates_locations
  print_dates_locations_list(list)
  list
end

def add_date_location
  puts "Add a new Date and Location"
  additional = gets.to_s # how do i get a 2 input var and turn one input into string, other into date?
  @dates_locations << addional #how do i put in date order?
  view_dates_locations # how do i not get stuck in a loop here?
end

def delete_date_location
  puts "Select a Date and Location to delete"
  view_dates_locations
  delete = gets.to_i
  if delete > 0  && <= @dates_locations.length
    


end

user_menu_selection
