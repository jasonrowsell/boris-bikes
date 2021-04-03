require 'bike_storage'

shared_examples 'bike storage' do
  describe '#bikes' do
    let(:bike) { instance_double(Bike, 'Bike')}
    context 'when initialized' do
      subject { described_class.new.bikes }
      it { is_expected.to be_empty }
    end

    context 'when docking bikes' do
      it 'docks new bikes' do
        subject.bikes << bike
        expect(subject.bikes).to include(bike)
      end
    end
  end
end

describe DockingStation do
  include_examples 'bike storage'
end