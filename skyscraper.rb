# frozen_string_literal: true

require_relative './building'

# Class that inherits from Building but bigger
class Skyscraper < Building
  # Class method
  def self.cities
    ['New York City', 'Mexico City', 'Dubai', 'Shanghai']
  end
end

# Create a new skyscraper
skyscraper = Skyscraper.new('Empire State Building', 423, 56, 'Evelyn Francis McHale')
p skyscraper
p skyscraper.cities
puts "There are skyscrapers in #{Skyscraper.cities.join(', ')}"
