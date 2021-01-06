require "#{Rails.root}/app/repositories/active_record_repository/comment"
require "#{Rails.root}/app/domain/comments/delete"

module Mutations
  module Comments
    class Delete < GraphQL::Schema::Mutation
      null true
      description 'Delete a commentary'
      type Boolean

      argument :id, ID, required: true

      def resolve(id:)
        ::Comments::Delete.new(
          ActiveRecordRepository::Comment.new
        ).call(id)
      end
    end
  end
end
