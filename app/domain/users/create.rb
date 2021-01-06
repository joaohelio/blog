require_relative 'user_entity'

module Users
  class Create
    def initialize(user_repo)
      @user_repo = user_repo
    end

    def call(user)
      dto = @user_repo.create(user)

      UserEntity.new(dto.to_h)
    end
  end
end
