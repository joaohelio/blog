require "#{Rails.root}/app/repositories/active_record_repository/user"

module Queries
  module Users
    class Users < GraphQL::Schema::Resolver
      description 'Users'

      type [Types::Users::UserType], null: true

      def resolve
        ActiveRecordRepository::User.new.all
      end
    end
  end
end