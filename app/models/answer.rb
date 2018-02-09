class Answer < ApplicationRecord
    belongs_to :user
    belongs_to :question

    validates :user_id, presence: true
    validates :question_id, presence: true
    validates :body, presence: true, length: { minimum: 10, maximum: 1000 }
end
