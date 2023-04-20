require_relative 'nameable'

class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

# capitaldecorator class
class CapitalizeDecorator < Decorator
  def correct_name
    super.capitalize
  end
end

# trimerdecorator class
class TrimmerDecorator < Decorator
  def correct_name
    super[0...10]
  end
end
