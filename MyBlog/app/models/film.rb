class Film < ApplicationRecord
  has_many :links
  has_many :posts, through: :links
end
