require_relative 'bike'

class DockingStation
  
  attr_reader :bike

  def release_bike
    Bike.new 
  end

  #dock needs to store bike-instance's ID and working
  def dock(bike)
    bike
  end

end

