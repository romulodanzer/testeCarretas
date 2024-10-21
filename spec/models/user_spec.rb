require 'rails_helper'

RSpec.describe User, type: :model do
  it 'cria um usuário master' do
    user = User.create!(email: 'master@test.com', password: 'password', role: 1)
    expect(user.master?).to be_truthy
  end
end