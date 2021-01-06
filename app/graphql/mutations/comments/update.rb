require "#{Rails.root}/app/repositories/active_record_repository/comment"
require "#{Rails.root}/app/domain/comments/update"

module Mutations
  module Comments
    class Update < GraphQL::Schema::Mutation
      null true
      description 'Update a commentary'
      type Boolean

      argument :id, ID, required: true
      argument :comment, Types::Comments::CommentInputType, required: true

      def resolve(id:, comment:)
        ::Comments::Update.new(
          ActiveRecordRepository::Comment.new
        ).call(id: id, comment: comment.to_h)
      end
    end
  end
end
