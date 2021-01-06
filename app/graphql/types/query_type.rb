module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :user, resolver: Queries::Users::User
    field :users, resolver: Queries::Users::Users
  end
end
