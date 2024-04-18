# frozen_string_literal: true

# Butler Class that comes w/ every Castle
class Butler
  attr_reader :name

  def initialize(castle)
    @castle = castle
  end
end
