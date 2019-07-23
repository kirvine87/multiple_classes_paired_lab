require("minitest/autorun")
require("minitest/rg")

require_relative("../Bus")
require_relative("../Person")
require_relative("../BusStop")

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(11, "Kilmarnock")
    @person = Person.new("Stephen", 35)
    @person2 = Person.new("Kyle", 19)
    @stop = BusStop.new("Partick")
  end

  def test_get_route_number()
    assert_equal(11, @bus.route)
  end

  def test_get_destination()
    assert_equal("Kilmarnock", @bus.destination)
  end

  def test_drive()
    assert_equal("Brum brum!", @bus.drive())
  end

  def test_passenger_count()
    assert_equal(0, @bus.passenger_count)
  end

  def test_add_passenger()
    @bus.add_passenger(@person)
    assert_equal(1, @bus.passenger_count())
  end

  def test_remove_passenger()
    @bus.add_passenger(@person)
    @bus.add_passenger(@person2)
    @bus.remove_passenger(@person)
    assert_equal(1, @bus.passenger_count())
  end

  def test_empty_bus()
    @bus.add_passenger(@person)
    @bus.add_passenger(@person2)
    @bus.empty_bus()
    assert_equal(0, @bus.passenger_count)
  end

  def test_collect_passengers_from_stop()
    stop = BusStop.new("Shield Road")
    stop.add_person_queue(@person1)
    stop.add_person_queue(@person2)
    @bus.collect_passengers(@stop)
    assert_equal(0, @stop.queue_length)
  end

end
