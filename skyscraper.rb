# frozen_string_literal: true

require_relative 'building'

# Skyscraper Class that inherits of Building Class
class Skyscraper < Building
  # C Dev: Where is the code?????

  def initialize(name, width, length, ghost, height)
    super(name, width, length, ghost)
    @height = height
  end

  # Class Method using self (needed!!!!)
  # Skyscraper.cities # => ['New York City', 'Mexico City', etc...
  def self.cities
    return ['New York City', 'Mexico City', 'Shanghai', 'Bankog', 'Dubai']
  end

  # Instance Method Using self (it is not needed, as the instance method will always be used on the instence itself)
  def type_of_owner
    if @height > 50
      # self === `skyscraper = Skyscraper.new` (instance of the Class)
      "this #{self.capitalized_name} is a skyscraper for Spider-Man."
    else
      "this #{self.capitalized_name} is a skyscraper for beginners"
    end
  end

  def capitalized_name
    # self.name.capitalize
    @name.capitalize
  end
end

# 👇🏻 variable with instance inside
p empire = Skyscraper.new('Empire state building', 100, 100, 'Evelyn 👻', 1000)
#             creating instance of class Skyscraper with name, width, length, ghost, height
p trumple_orange = Skyscraper.new('Trump Tower 👻', 100, 100, 'Trump 👻', 20)
# p empire = Skyscraper.new('Empire state building', 100, 100, 1000)
# p empire
p trumple_orange.type_of_owner
# # Subclass / Class
# p Skyscraper.cities # class method
