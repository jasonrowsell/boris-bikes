require 'docking_station'

RSpec.describe DockingStation do 
  before do
    @docking_station = DockingStation.new
  end
  it { is_expected.to respond_to :release_bike }

  it 'release working bike' do
    bike = @docking_station.release_bike
    expect(bike.working?).to be_truthy
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'docks a bike' do 
    expect(subject.dock(bike)).to eq([])
  end


end

RSpec.describe Bike do
  it { is_expected.to respond_to :working? }
end
