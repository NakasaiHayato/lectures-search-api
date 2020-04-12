module V1
  class Subjects < Grape::API
    resources :lectures do
      desc 'returns all subjects'
      get '/' do
        @subjects = Subject.all
        if params[:keyword].present?
          @subjects = @subjects.get_by_subject params[:keyword]
        end
        if params[:teacher_name].present?
          @subjects = @subjects.get_by_teacher params[:teacher_name]
        end
        present @subjects, with: V1::Entities::SubjectEntity
      end
    end
  end
end