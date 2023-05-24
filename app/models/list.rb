class List < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
end

#   A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
