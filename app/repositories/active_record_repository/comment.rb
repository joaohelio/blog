require_relative 'template'

module ActiveRecordRepository
  class Comment
    attr_reader :model
    include Template

    def initialize
      @model = ::Comment
    end

    def model_class
      model
    end
  end
end
