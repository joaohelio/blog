require_relative 'template'

module ActiveRecordRepository
  class Post
    attr_reader :model
    include Template

    def initialize
      @model = ::Post
    end

    def model_class
      model
    end

    def to_dto(obj)
      OpenStruct.new(obj.as_json(include: :comments))
    end
  end
end
