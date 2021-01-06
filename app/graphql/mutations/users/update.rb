require "#{Rails.root}/app/repositories/active_record_repository/user"
require "#{Rails.root}/app/domain/users/update"

module Mutations
  module Users
    class Update < GraphQL::Schema::Mutation
      null true
      description 'Update an user'
      type Boolean

      argument :id, ID, required: true
      argument :user, Types::Users::UserInputType, required: true

      def resolve(id:, user:)
        ::Users::Update.new(
          ActiveRecordRepository::User.new
        ).call(id: id, user: user.to_h)
      end
    end
  end
end
