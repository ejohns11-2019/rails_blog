#making a contact list in ruby
# Variables
@contact_list = [
  {name: "Emma Jones", phone: "4356495234", email: "ej@gmail.com"},
  {name: "Alex Butler", phone: "2344321256", email: "ab@yahoo.com"},
  {name: "Kelly Kapur", phone: "9875675432", email: "kk@msn.com"}
]

@edit_contact

#Methods
def menu #method listing menu options
  puts "Select from the following options:"
  puts "1) View Contacts"
  puts "2) Add New Contact"
  puts "3) Delete Contact"
  puts "4) Edit Contact"
  puts "5) Exit"
end

def user_selection #method to make selection from menu
  menu
  choice = gets.to_i
  case choice
  when 1      #how does the computer know 1 in the above list means choice 1???
    view_contacts
  when 2
    add_contact
  when 3
    delete_contact
  when 4
    edit_contact
  when 5
    puts "Goodbye"
    exit
  else
    puts "Invalid"
  end
  user_selection
end



def print_contact_list(list)
  list.each_with_index do |contact, index|
    puts "#{index + 1} Name: #{contact[:name]} Phone: #{contact[:phone]} Email: #{contact[:email] }"
  end
  # show only value of hashes, improve spacing between the contacts?
end

def view_contacts
  contacts = @contact_list
  print_contact_list(contacts)
  #do i need the print_contact_list function????
end

def add_contact
  input = {}
  puts "Enter the name of the new contact"
  input[:name] = gets.to_str
  puts "Type in his/her phone number"
  input[:phone] = gets.to_str
  puts "Type in his/her email"
  input[:email] = gets.to_str
  @contact_list << input ##why is the new contact printing in a diff format than the rest of the contacts/
  #create new item in array
  #create new hash for that item
end

def delete_contact
  puts "Which contact would you like to delete?"
  view_contacts
  input = gets.to_i
  if input >= 0 && input <= @contact_list.length
    @contact_list.delete_at(input -1 )
  else
    puts "invalid choice"
  end
end

def edit_contact
  puts "Select a contact to edit"
  view_contacts
  input = gets.to_i
  puts @contact_list[input - 1]
  puts "Which of the following would you like to edit?"
  puts "1) Name"
  puts "2) Phone"
  puts "3) Email"
  choice = gets.to_i
  case choice
  when 1
    puts "Enter the correct name"
    name = gets.chomp.to_str
    @contact_list[input -1][:name] = name
  when 2
    puts "Enter the correct phone number"
    phone = gets.chomp.to_i
    @contact_list[input -1][:phone] = phone
  when 3
    puts "Enter the correct email"
    email = gets.chomp.to_str
    @contact_list[input - 1][:email] = email
  else
    exit
  end


user_selection
