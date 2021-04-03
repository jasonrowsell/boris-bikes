require_relative 'bike_storage'

class DockingStation 
  include BikeStorage

  DEFAULT_CAPACITY = 20

  def release_bike
    raise ReleaseBikeError if empty_station?
    bikes.pop
  end

  def dock(bike)
    raise DockingError if full?
    @bikes << bike
  end

  
  private

  def empty_station?
    bikes.empty?
  end

  def full?
    bikes.size >= DEFAULT_CAPACITY
  end
end
