class QuestionTag < ApplicationRecord
  belongs_to :question
  belongs_to :tag

  validates_uniqueness_of :tag, scope: :question
end
