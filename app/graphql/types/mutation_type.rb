module Types
  class MutationType < Types::BaseObject
    name 'Mutation'

    field :createUser, function Resolvers::CreateUser.new
    field :signinUser, function: Resolvers::SignInUser.new
end
