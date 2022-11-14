class Post < ApplicationRecord
  validates :title, :subtitle, presence: true
  validates :content, length: { maximum: 50 }

end
