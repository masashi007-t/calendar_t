class Article < ApplicationRecord

    validates :month, presence: true
    validates :day, presence: true
    validates :youbi, presence: true
end
