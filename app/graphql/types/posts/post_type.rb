module Types
  module Posts
    class PostType < Types::BaseObject
      description 'A Post'

      field :id, ID, null: false
      field :title, String, null: false
      field :comments, [Types::Comments::CommentType], 'Comments from Post', null: true
    end
  end
end
