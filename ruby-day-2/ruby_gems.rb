#ruby gems: babel for fake data, pry for debugging
#to use a gem go into specific folder, in terminal do gem install pry (pry is an example of a gem)
#once installed, go into file in editor and type require 'pry'
#how to use the gem varies by gem
#when looking at the gems it will have the gem name and the version #

#in terminal type bundle platform  - this will display compatibility
#bundle init in terminal once in correct folder -this will create the gemfile
#put all gems want to install in gemfile then in terminal do bundle intall
#use require to import the gems into the file
#have ONE gem file per project

#when add new gems into gemfile must re-run bundle install in terminal
#bundle install will download the gems you chose and any additional ones those gems require
require 'pry'
require 'colorize'
# puts String.colors

# puts 'Color me!'.colorize(:light_cyan)
# puts String.modes

paper = 'hello'
binding.pry #will suspend code into a debugging state at this pt
puts papers
#put bind.pry before where things are breaking in the code
#to get out of pry in terminal type quit or exit (ctrl c does not work here)
