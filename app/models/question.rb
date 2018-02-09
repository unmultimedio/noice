class Question < ApplicationRecord
    belongs_to :user
    has_many :answers
    has_many :tags, through: :question_tags

    validates :user_id, presence: true
    validates :title, presence: true, length: { minimum: 5, maximum: 30 }
    validates :body, presence: true, length: { minimum: 10, maximum: 1000 }
end
