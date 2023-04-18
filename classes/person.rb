class Person
  def initialize(name = 'unknown',age,parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
  end

  def id
    @id
  end

  def id=(value)
    @id = value
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end

  def age
    @age
  end

  def age=(value)
    @age = value
  end
end