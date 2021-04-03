require 'docking_station'
require 'exceptions'

describe DockingStation do
  let(:bike) { instance_double(Bike, :bike, working?: true) }

  describe '#bikes' do
    it 'initializes with an empty bike storage' do
        expect(described_class.new.bikes).to be_empty
    end

    context 'when docking bikes' do
      it 'docks new bikes' do
        subject.bikes << bike
        expect(subject.bikes).to include(bike)
      end
    end
  end

  describe '#release_bike' do
    context 'when not empty' do
      before(:example) { subject.dock(bike) }
      let(:released_bike) { subject.release_bike }

      it { is_expected.to respond_to :release_bike }

      it 'returns a bike' do
        expect(released_bike).to be bike
      end

      it 'returns a working bike' do
        expect(released_bike).to be_working
      end
    end

    context 'when empty' do
      it 'raises error release bike error' do
        expect { subject.release_bike }.to raise_error(ReleaseBikeError, 'Sorry mate, I\'m all out of bikes!')
      end
    end
  end

  describe '#dock' do
    context 'when not full' do
      it { is_expected.to respond_to(:dock).with(1) }

      it 'adds bike to bikes' do
        subject.dock(bike)
        expect(subject.bikes).to include(bike)
      end
    end

    context 'when full' do
      it 'raises error' do
        subject.capacity.times { subject.dock(bike) }
        expect { subject.dock(bike) }.to raise_error(DockingError, 'Unlucky fella, I\'m biked to the max!')
      end
    end
  end

  describe '#full?' do
    context 'when empty' do
      it 'returns false' do
        expect(subject.send(:full?)).to be false
      end
    end

    context 'when full' do
      it 'returns true' do
        subject.capacity.times { subject.dock(bike) }
        expect(subject.send(:full?)).to be true
      end
    end
  end

  describe '#capacity' do
    let(:station) { described_class.new(40) }
    it 'returns the default capacity' do
      expect(subject.capacity).to eq described_class::DEFAULT_CAPACITY
    end

    it 'can be set on initialization' do
      expect(station.capacity).to eq 40
    end
  end
end
