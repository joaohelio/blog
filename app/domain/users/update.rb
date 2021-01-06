module Users
  class Update
    def initialize(user_repo)
      @user_repo = user_repo
    end

    def call(id:, user:)
      @user_repo.update(id, user)
    end
  end
end
