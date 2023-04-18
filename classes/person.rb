class Person
  attr_reader :id, :name, :age

  def initialize(age, name = 'unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def id=(value)
    @id = value
  end

  def name=(value)
    @name = value
  end

  def age=(value)
    @age = value
  end

  def can_use_services
    of_age? || @parent_permission

  private

  def of_age?
    @age >= 18
  end

end