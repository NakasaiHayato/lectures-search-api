class Lecture < ApplicationRecord
  belongs_to :subject, optional: true
end