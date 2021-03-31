require 'docking_station'

RSpec.describe DockingStation do 

  it { is_expected.to respond_to :release_bike }

  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'docks a bike' do 
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  describe '#release_bike' do
    it 'releases a docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end     
  end

end
