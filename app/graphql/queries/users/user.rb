require "#{Rails.root}/app/repositories/active_record_repository/user"

module Queries
  module Users
    class User < GraphQL::Schema::Resolver
      description 'User'

      type Types::Users::UserType, null: true

      argument :id, Int, 'Id of the user', required: true

      def resolve(id:)
        ActiveRecordRepository::User.new.find(id)
      end
    end
  end
end
