require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, specializatioin, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specializatioin = specializatioin
  end

  def can_use_services?
    true
  end
end
