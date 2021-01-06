module Comments
  class Delete
    def initialize(comment_repo)
      @comment_repo = comment_repo
    end

    def call(comment_id)
      @comment_repo.delete(comment_id)
    end
  end
end
