module Posts
  class Update
    def initialize(post_repo)
      @post_repo = post_repo
    end

    def call(id:, post:)
      @post_repo.update(id, post)
    end
  end
end
