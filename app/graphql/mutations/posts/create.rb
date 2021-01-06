require "#{Rails.root}/app/repositories/active_record_repository/post"
require "#{Rails.root}/app/domain/posts/create"

module Mutations
  module Posts
    class Create < GraphQL::Schema::Mutation
      null true
      description 'Create a Post'
      type Types::Posts::PostType

      argument :user_id, ID, required: true
      argument :post, Types::Posts::PostInputType, required: true

      def resolve(user_id:, post:)
        ::Posts::Create.new(
          ActiveRecordRepository::Post.new
        ).call(user_id, post.to_h)
      end
    end
  end
end
