
Types::LinkType = GraphQL::ObjectType.define do
  
  name 'Hero'

  field :id, !types.ID
  field :heroclass, !types.String
  field :description, !types.String
end