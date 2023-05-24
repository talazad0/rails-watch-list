class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true

  has_many :bookmarks
end
