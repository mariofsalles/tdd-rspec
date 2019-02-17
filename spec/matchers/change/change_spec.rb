require 'counter'
describe 'Matcher change' do
  it { expect {Counter.increment}.to change {Counter.quantity } } # 1
  it { expect {Counter.increment}.to change {Counter.quantity }.by(1) } # 2
  it { expect {Counter.increment}.to change {Counter.quantity }.from(2).to (3) } # 3
  it { expect {Counter.increment}.to change {Counter.quantity }.by(1) } # 2
  it { expect {Counter.increment}.to change {Counter.quantity }.from(4).to (5) } # 3
end