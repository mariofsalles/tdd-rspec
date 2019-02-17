describe "Miguel" do
  it 'String' do
    expect(subject.size).to eq(6)
  end
end

describe [1,2] do
  it 'Array' do
    expect(subject).to be_kind_of(Array)
  end
end