require_relative 'comment_entity'

module Comments
  class Create
    def initialize(comment_repo)
      @comment_repo = comment_repo
    end

    def call(post_id, comment)
      dto = @comment_repo.create(comment.merge(post_id: post_id))

      CommentEntity.new(dto.to_h)
    end
  end
end
