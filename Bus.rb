class Bus

  attr_reader :route, :destination

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum!"
  end

  def passenger_count()
    return @passengers.count()
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def remove_passenger(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus()
    @passengers = []
  end

  def collect_passengers(stop)
    @passengers << stop
  end

end
