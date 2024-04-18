# frozen_string_literal: true

# Magic Comment 👆🏻 🪄

require_relative 'building'

# House inherits from Building
class House < Building
  # def self.price_per_square_meter(country)
  #   case country
  #   when "Germany" then 9000
  #   when "Brazil" then 3000
  #   else raise Exception.new("No data for #{country}")
  #   end
  # end
end

# p House.price_per_square_meter("Germany")
# p House.price_per_square_meter("Sweden")
# emmas_house.city

# Creating a new Instance of a Class
# p House.new
# #<House:0x0000000109255a30>

# Creating a new Instance of a Class w/ attributes
# Call class method `.new` on House Class
# to create an Instance of House (kilen)
p kilen = House.new('Kilen', 10, 15, 'Hakkespakke')

# By default (Encapsulation) we cannot read the properties of the instance
# # We need to allow/set them w/ readers/getters & writers/setters
# p kilen.name
# p kilen.width

# puts 'What is the name of the ghost?'
# p kilen.ghost

# puts "How big is #{kilen.name}?"
# # Call Instance Method on Instance (kilen) of House Class
# p kilen.area
# puts 'This is kilen 🏡'
# p kilen
