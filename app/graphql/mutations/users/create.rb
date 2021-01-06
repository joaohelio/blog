require "#{Rails.root}/app/repositories/active_record_repository/user"
require "#{Rails.root}/app/domain/users/create"

module Mutations
  module Users
    class Create < GraphQL::Schema::Mutation
      null true
      description 'Create an user'
      type Types::Users::UserType

      argument :user, Types::Users::UserInputType, required: true

      def resolve(user:)
        ::Users::Create.new(
          ActiveRecordRepository::User.new
        ).call(user.to_h)
      end
    end
  end
end
