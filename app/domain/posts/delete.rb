module Posts
  class Delete
    def initialize(post_repo)
      @post_repo = post_repo
    end

    def call(post_id)
      @post_repo.delete(post_id)
    end
  end
end
