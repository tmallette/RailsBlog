class Post < ApplicationRecord
    belongs_to :user

    before_validation :generate_slug, on: :create

    validates :title, :content, :slug, presence: true, uniqueness: true

    def to_param
        slug
    end

    private

    def generate_slug
        self.slug ||= title.parameterize if title.present?
    end
end