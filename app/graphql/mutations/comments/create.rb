require "#{Rails.root}/app/repositories/active_record_repository/comment"
require "#{Rails.root}/app/domain/comments/create"

module Mutations
  module Comments
    class Create < GraphQL::Schema::Mutation
      null true
      description 'Create an commentary'
      type Types::Comments::CommentType

      argument :post_id, ID, required: true
      argument :comment, Types::Comments::CommentInputType, required: true

      def resolve(post_id:, comment:)
        ::Comments::Create.new(
          ActiveRecordRepository::Comment.new
        ).call(post_id, comment.to_h)
      end
    end
  end
end
