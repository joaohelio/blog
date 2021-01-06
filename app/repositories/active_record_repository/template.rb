module ActiveRecordRepository
  module Template
    def find(id)
      to_dto model_class.find(id)
    end

    def all
      model_class.all.map(&method(:to_dto))
    end

    def create(model)
      to_dto model_class.create(model)
    end

    def update(id, model)
      to_dto model_class.find(id).update(model)
    end

    def delete(id)
      model_class.find(id).destroy
    end

    def to_dto(obj)
      OpenStruct.new(obj.as_json)
    end
  end
end
