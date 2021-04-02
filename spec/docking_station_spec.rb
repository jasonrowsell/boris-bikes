require "docking_station"

describe DockingStation do

  before do
    @bike = Bike.new
  end

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to :dock}

  it 'checks if the bike is working' do
    expect(@bike).to be_working
  end

  describe 'calling on empty docking station' do

    it 'release bike' do
      expect { subject.release_bike }.to raise_error('Sorry mate, don\'t be a dock')
    end

    it 'dock bike' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(@bike)
      end
      expect { subject.dock(@bike) }.to raise_error('Unlucky mate, I\'m full')
    end
  end

  it { is_expected.to respond_to :capacity }

  it 'has a default capacity' do
    expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Unlucky mate, I\'m full'
    end
  end
  
end
