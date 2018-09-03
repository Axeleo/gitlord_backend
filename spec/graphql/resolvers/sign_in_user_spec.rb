require 'rails_helper'

RSpec.describe Resolvers::SignInUser do
  context 'sign in legitimate user' do 
    let(:result) do
      @user = create(:user)
      args = {
        email: {
          email: @user.email,
          password: @user.password
        }
      }
      Resolvers::SignInUser.new.call(nil, args, { cookies: {} })
    end

    it 'is present' do
      expect(result.present?).to be true
    end

    it 'token is present' do
      expect(result.token.present?).to be true
    end

    it 'has the correct user' do 
      expect(result.user).to eq @user
    end
  end
  context 'sign in incorrect user details' do 
  
    it 'has no credentials' do
      expect(Resolvers::SignInUser.new.call(nil, nil, { cookies: {} })).to be nil
    end

    it 'has incorrect email' do
      @user = create(:user)
      expect(Resolvers::SignInUser.new.call(nil, {
          email: {
            email: 'wrong',
            password: @user.password
          }
        }, { cookies: {} })
      ).to be nil
    end

    it 'has incorrect password' do 
      @user = create(:user)
      expect(Resolvers::SignInUser.new.call(nil, {
          email: {
            email: @user.email,
            password: 'wrong'
          }
        }, { cookies: {} })
      ).to be nil
    end
  end
end