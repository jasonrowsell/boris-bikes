require_relative 'bike'

class DockingStation 
  DEFAULT_CAPACITY = 20
  

  def initialize
    @bikes = []
  end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  attr_reader :bike
  private
  def full?
    fail 'Unlucky mate, I\'m full' if @bikes.size >= DEFAULT_CAPACITY
  end

  def empty?
    fail 'Sorry mate, don\'t be a dock' if @bikes.empty?
  end

end