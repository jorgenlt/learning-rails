class Post < ApplicationRecord
  # belongs_to :pages, class_name: "pages", foreign_key: "pages_id"

  validates :title, :subtitle, presence: true
  validates :content, presence: true

  # include PgSearch::Model
  # multisearchable against: [:title, :subtitle, :content]

  include PgSearch::Model

  pg_search_scope :search_posts,
    against: [ :title, :subtitle, :content ],
      using: { tsearch: { prefix: true } }
end
