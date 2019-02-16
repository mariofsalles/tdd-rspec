describe (1..10),'Ranges' do
  it '# cover' do
    is_expected.to cover(2)
    expect(subject).to cover(2,5)
  end 

  it{is_expected.to cover(2)}
end