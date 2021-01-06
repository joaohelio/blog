module Types
  module Users
    class UserInputType < GraphQL::Schema::InputObject
      graphql_name "UserInputType"
      description "All the attributes for creating/updating an user"

      argument :email, String, required: true
    end
  end
end
