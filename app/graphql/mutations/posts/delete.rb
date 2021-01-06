require "#{Rails.root}/app/repositories/active_record_repository/post"
require "#{Rails.root}/app/domain/posts/delete"

module Mutations
  module Posts
    class Delete < GraphQL::Schema::Mutation
      null true
      description 'Delete a post'
      type Boolean

      argument :id, ID, required: true

      def resolve(id:)
        ::Posts::Delete.new(
          ActiveRecordRepository::Post.new
        ).call(id)
      end
    end
  end
end
