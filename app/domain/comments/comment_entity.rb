# frozen_string_literal: true

module Comments
  class CommentEntity < Dry::Struct
    attribute :id, Types::Strict::Integer
    attribute :text, Types::Strict::String
  end
end
