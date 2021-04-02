require_relative 'bike'

class DockingStation 
  attr_reader :bike, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  
  private
  def full?
    fail 'Unlucky mate, I\'m full' if @bikes.size >= DEFAULT_CAPACITY
  end

  def empty?
    fail 'Sorry mate, don\'t be a dock' if @bikes.empty?
  end

end