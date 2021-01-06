require "#{Rails.root}/app/repositories/active_record_repository/post"
require "#{Rails.root}/app/domain/posts/update"

module Mutations
  module Posts
    class Update < GraphQL::Schema::Mutation
      null true
      description 'Update a post'
      type Boolean

      argument :id, ID, required: true
      argument :post, Types::Posts::PostInputType, required: true

      def resolve(id:, post:)
        ::Posts::Update.new(
          ActiveRecordRepository::Post.new
        ).call(id: id, post: post.to_h)
      end
    end
  end
end
