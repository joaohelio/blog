module Types
  class MutationType < Types::BaseObject
    # users
    field :create_user, mutation: Mutations::Users::Create
    field :update_user, mutation: Mutations::Users::Update
    field :delete_user, mutation: Mutations::Users::Delete

    # posts
    field :create_post, mutation: Mutations::Posts::Create
    field :update_post, mutation: Mutations::Posts::Update
    field :delete_post, mutation: Mutations::Posts::Delete

    # comments
    field :create_comment, mutation: Mutations::Comments::Create
    field :update_comment, mutation: Mutations::Comments::Update
    field :delete_comment, mutation: Mutations::Comments::Delete
  end
end
