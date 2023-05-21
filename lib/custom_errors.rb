class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      raise PartnerError, "You must give the get_married method an argument of an instance of the person class!"
    end
  end

  class PartnerError < StandardError
  end
end
