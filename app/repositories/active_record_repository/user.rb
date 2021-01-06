require_relative 'template'

module ActiveRecordRepository
  class User
    include Template

    attr_reader :model

    def initialize
      @model = ::User
    end

    def model_class
      model
    end

    def to_dto(obj)
      OpenStruct.new(obj.as_json(include: { posts: { include: :comments } }))
    end
  end
end
