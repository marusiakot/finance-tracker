class Article < ActiveRecord::Base
    has_many :article_categories
    has_many :categories, through: :article_categories
    validates :title, presence: true, length: {minimum: 8, maximum: 99}
    validates :description, presence: true, length: {minimum: 35, maximum: 580}
    belongs_to :user
end

