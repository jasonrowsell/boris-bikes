shared_examples 'custom errors' do
  it 'raises custom error and message' do
    expect { raise subject }.to raise_error(subject, subject.msg)
  end
end

describe ReleaseBikeError do
  include_examples 'custom errors'
end

describe DockingError do
  include_examples 'custom errors'
end
