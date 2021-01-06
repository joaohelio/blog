module Comments
  class Update
    def initialize(comment_repo)
      @comment_repo = comment_repo
    end

    def call(id:, comment:)
      @comment_repo.update(id, comment)
    end
  end
end
