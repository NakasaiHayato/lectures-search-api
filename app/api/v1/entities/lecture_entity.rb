module V1
  module Entities
    class LectureEntity < Grape::Entity
      expose :id
      expose :title
      expose :date
    end
  end
end