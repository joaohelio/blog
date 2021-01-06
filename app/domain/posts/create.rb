require_relative 'post_entity'

module Posts
  class Create
    def initialize(post_repo)
      @post_repo = post_repo
    end

    def call(user_id, post)
      dto = @post_repo.create(post.merge(user_id: user_id))

      PostEntity.new(dto.to_h)
    end
  end
end
