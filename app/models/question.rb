class Question < ApplicationRecord
    belongs_to :user
    has_many :answers
    has_many :question_tags
    has_many :tags, through: :question_tags

    validates :user_id, presence: true
    validates :title, presence: true, length: { in: 5..30 }
    validates :body, presence: true, length: { in: 10..1000 }

    def body_excerpt(chars = 50)
      "#{body[0,chars]}#{'...' if body.length > chars}"
    end

    def question_tags=(tags_ids)
      tags_ids.each do |tag_id|
        question_tags.build(question_id: id, tag_id: tag_id.to_i)
      end
    end
end
