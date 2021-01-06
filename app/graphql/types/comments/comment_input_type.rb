module Types
  module Comments
    class CommentInputType < GraphQL::Schema::InputObject
      graphql_name "CommentInputType"
      description "All the attributes for creating/updating a commentary"

      argument :text, String, required: true
    end
  end
end
