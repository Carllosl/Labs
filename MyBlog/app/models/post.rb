class Post < ApplicationRecord
  has_many :links
  has_many :films, through: :links
  validates :title, presence: true, length: {minimum: 5}
end
