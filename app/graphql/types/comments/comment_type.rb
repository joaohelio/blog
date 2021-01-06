module Types
  module Comments
    class CommentType < Types::BaseObject
      description 'A Commentary'

      field :id, ID, null: false
      field :text, String, null: false
    end
  end
end
