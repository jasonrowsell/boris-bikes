require 'docking_station'

RSpec.describe DockingStation do 

  it { is_expected.to respond_to :release_bike }

  it 'release working bike' do
    bike = subject.release_bike
    expect(bike.working?).to be_truthy
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'docks a bike' do 
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end


end

RSpec.describe Bike do
  it { is_expected.to respond_to :working? }
end
