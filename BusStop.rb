class BusStop

  attr_reader :name

  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_length()
    return @queue.count()
  end

  def add_person_queue(person)
    @queue << person
  end


end
