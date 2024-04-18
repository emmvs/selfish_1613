# frozen_string_literal: true

require_relative './building'
require_relative './butler'

# Class that inherits from Building but fancier
class Castle < Building
  attr_accessor :butler, :moat

  def initialize(name, length, width, ghost, ruler)
    super(name, length, width, ghost)
    @ruler = ruler
    # Passing the instance of the castle = Castle.new to the butler
    # self === `castle = Castle.new` (instance of the Class)
    @butler = Butler.new(self)
  end

  # Class Method (.new)
  def self.categories
    ['medieval', 'fancy', 'disney']
  end

  def a_moat?
    @moat == true
  end

  def a_butler?
    @butler != nil ? 'yes, yes, we is rich' : 'noooooo butler, we are poor'
  end

  def area
    super + 1000
  end

  def ownership_details
    puts "#{@name} is ruled by #{@ruler_name}"
  end
end

castle = Castle.new('Ahrensburger Schloss', 18, 20, 'Schubiduu...uh', 'Von Rantzau')
p castle

# Build your own castle
castle = Castle.new('Ahrensburger Schloss', 18, 20, 'Schubiduu...uh')
# p castle
# p castle.butler = 'James' # We can do this ebcause of our writer / accessor
# puts 'Does that castle have a butler?'
# p castle.a_butler?
puts 'How big is the castle?'
puts "- It has an area of #{castle.area} square meters 🏰"

p schloss = Castle.new('Ahrensburger Schloss', 100, 100, 'Schubiduuuh 🍿', 'Prince von Rantzhau')
p schloss.ownership_details

# puts 'Who is haunting this castle? 👻'
# p schloss.who_haunts_this_castle
# puts 'How big is this castle in sqm?'
# p schloss.area
# puts 'Do we have a moat yet?'
# p schloss.a_moat?
# p schloss.moat = true
# puts 'Do we have a moat now?'
# p schloss.a_moat?

# We cannot call a class method on an instance
# schloss.categories

# We can only call a class method on a class
# puts Castle.categories

# @category = "disney"
# def category
