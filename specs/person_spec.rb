require("minitest/autorun")
require("minitest/rg")
require_relative("../Person")

class TestPerson < MiniTest::Test

  def setup()
    @person = Person.new("Kyle", 19)
  end

  def test_get_person_name()
    assert_equal("Kyle", @person.name)
  end 

  def test_get_person_age()
    assert_equal(19, @person.age)
  end


end
