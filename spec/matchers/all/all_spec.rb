describe 'All', type: 'collection' do # testa todos os elementos da coleção
  it { expect([1,7,9]).to all((be_odd).and be_an(Integer))}
  it { expect(['ruby', 'rails']).to all(be_a(String).and include('r'))}
end