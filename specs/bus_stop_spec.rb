require("minitest/autorun")
require("minitest/rg")
require_relative("../Person")
require_relative("../BusStop")

class BusStopTest < MiniTest::Test

  def setup()
    @stop = BusStop.new("Partick")
    @person1 = Person.new("Louise", 24)
    @person2 = Person.new("Stephen", 35)
    @person3 = Person.new("Kyle", 19)


  end

  def test_get_name()
    assert_equal("Partick", @stop.name)
  end

  def test_add_person_queue()
    @stop.add_person_queue(@person1)
    assert_equal(1, @stop.queue_length())
  end

  def test_can_remove_from__queue()
    @stop.add_person_queue(@person1)
    @stop.remove_from_queue()
    assert_equal(0, @stop.queue_length())
  end



end
