class Post < ApplicationRecord
  # belongs_to :pages, class_name: "pages", foreign_key: "pages_id"

  validates :title, :subtitle, presence: true
  validates :content, length: { maximum: 50 }

end
