require 'docking_station'

RSpec.describe DockingStation do 
  before do
    @docking_station = DockingStation.new

  end
  it { is_expected.to respond_to :release_bike }
  # it { expect(@docking_station.release_bike).to eq(Bike.new) }
  it 'release working bike' do
    bike = @docking_station.release_bike
    expect(bike.working?).to be_truthy
  end
end

RSpec.describe Bike do
  it { is_expected.to respond_to :working? }
end
