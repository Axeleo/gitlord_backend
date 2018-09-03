require 'rails_helper'

RSpec.describe Resolvers::CreateUser do
  let(:user) do
    args = { 
      name: 'Test User',
      authProvider: {
      email: {
        email: 'email@example.com',
        password: '[omitted]'
        }
      }
    }
    Resolvers::CreateUser.new.call(nil, args, nil)
  end

  it 'email is correct' do
    expect(user.email).to eq 'email@example.com'
  end

  it 'username is correct' do
    expect(user.name).to eq 'Test User'
  end
end
