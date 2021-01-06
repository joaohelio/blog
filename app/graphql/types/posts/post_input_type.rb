module Types
  module Posts
    class PostInputType < GraphQL::Schema::InputObject
      graphql_name "PostInputType"
      description "All the attributes for creating/updating a post"

      argument :title, String, required: true
    end
  end
end
