module Users
  class Delete
    def initialize(user_repo)
      @user_repo = user_repo
    end

    def call(user_id)
      @user_repo.delete(user_id)
    end
  end
end
