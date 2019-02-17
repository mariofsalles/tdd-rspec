describe 'Test Double' do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name:'Miguel', password:'senha')
    puts (user.name)
    puts (user.password)

  end
  
end