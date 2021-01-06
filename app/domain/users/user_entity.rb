# frozen_string_literal: true

require_relative '../posts/post_entity'

module Users
  class UserEntity < Dry::Struct
    attribute :id, Types::Strict::Integer
    attribute :email, Types::Strict::String
    attribute :posts, Types::Strict::Array.of(Posts::PostEntity)
  end
end
