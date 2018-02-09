class Tag < ApplicationRecord
    validates_uniqueness_of :slug
end
