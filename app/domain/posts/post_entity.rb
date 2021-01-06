# frozen_string_literal: true

require_relative '../comments/comment_entity'

module Posts
  class PostEntity < Dry::Struct
    attribute :id, Types::Strict::Integer
    attribute :title, Types::Strict::String
    attribute :comments, Types::Strict::Array.of(Comments::CommentEntity)
  end
end
