# frozen_string_literal: true

#         ⭐️ SUPER CLASS ⭐️
#            Building
# House     Skyscraper      Castle

#              Animal
#    Dog        Cat         Dinosaur

# Class for creating a Building w/ a name, size & ghost
class Building
  attr_reader :name, :width, :length, :ghost

  # Constructor Method
  def initialize(name, width, length, ghost)
    @name = name
    @width = width
    @length = length
    @ghost = ghost
  end

  # Instance Method
  def area
    @width * @length
  end

  # Instance Method
  def who_haunts_this_house
    @ghost
  end
end

# Class Methods can only be called on Classes
# # ! NOOOOO >>> kilen.new

# Instance Methods can only be called on Instances of a Class
# # ! NOOOOO >>> Building.area

Real Life Example: super
# # Normal Airbnb Flat
#   def total_price(nights)
#     base_price * nights + cleaning_fee
#   end

# # Luxery Airbnb Flat
#   def total_price(nights)
#     super(nights) + concierge_fee
#   end

# # Normal post
#     def display
#     puts "Caption: #{caption}"
#     puts "Image: #{image_url}"
#   end

# # Post w/ add
#   def display
#     super()
#     puts "Ad: #{ad_text}"
#   end
