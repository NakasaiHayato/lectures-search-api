module V1
  module Entities
    class TeacherEntity < Grape::Entity
      expose :id
      expose :name
    end
  end
end