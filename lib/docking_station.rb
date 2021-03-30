class DockingStation
  attr_reader :bike

  def initialize
    @bike = []
  end

  def release_bike
    Bike.new
  end

  #dock needs to store bike-instance's ID and working
  def dock(bike)
    @bike << bike
  end

end

class Bike
  def working?
    true
  end
end
