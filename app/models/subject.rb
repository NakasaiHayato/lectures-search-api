class Subject < ApplicationRecord
  has_many :lectures
  belongs_to :teacher, optional: true
  
  scope :get_by_subject, ->(subject) {
    where('title like ?', "%#{subject}%")
  }
  
  scope :get_by_teacher, ->(teacher) {
    Subject.joins(:teacher).where('name like ?', "%#{teacher}%")
  }
end