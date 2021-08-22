require 'bundler'
require 'time'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/eventcreator'

####### SEED ####### ####### ####### ####### ####### ####### ####### 
demian = User.new("dmn@gmail.com", 29)
julie = User.new("julie@aol.com", 23)
marion = User.new("marion@hotmail.com", 25)
mrtruc = User.new("truc@machin.com.com", 99)
mrbidule = User.new("bidule@chose.fr", 99)

event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
####### END OF SEED  ####### ####### ####### ####### ####### #######

binding.pry
puts "end of file "