module V1
  module Entities
    class SubjectEntity < Grape::Entity
      expose :id
      expose :title
      expose :weekday
      expose :period
      expose :teacher, using: V1::Entities::TeacherEntity
      expose :lectures, using: V1::Entities::LectureEntity
    end
  end
end