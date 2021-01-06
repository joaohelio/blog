require "#{Rails.root}/app/repositories/active_record_repository/user"
require "#{Rails.root}/app/domain/users/delete"

module Mutations
  module Users
    class Delete < GraphQL::Schema::Mutation
      null true
      description 'Delete an user'
      type Boolean

      argument :id, ID, required: true

      def resolve(id:)
        ::Users::Delete.new(
          ActiveRecordRepository::User.new
        ).call(id)
      end
    end
  end
end
