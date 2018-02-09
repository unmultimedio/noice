class Tag < ApplicationRecord
    validates_uniqueness_of :slug

    has_many :questions, through: :question_tags
end
