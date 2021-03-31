require_relative 'bike'

class DockingStation 
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'Sorry mate, don\'t be a dock' if @bikes.empty?
    @bikes.pop
  end


  def dock(bike)
    fail 'Unlucky mate, I\'m full' if @bikes.count >= 20
    @bikes << bike
  end

end