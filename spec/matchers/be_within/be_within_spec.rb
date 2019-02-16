describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(13) }
  it { expect([11.6, 12.1, 12.4]).to all(be_within(0.5).of(12)) } # 11.5 -- 12 -- 12.5 (aceitação dos valores)
end