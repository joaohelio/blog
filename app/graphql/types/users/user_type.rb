module Types
  module Users
    class UserType < Types::BaseObject
      description 'An User'

      field :id, ID, null: false
      field :email, String, null: false
      field :posts, [Types::Posts::PostType], 'Posts from User', null: true
    end
  end
end
