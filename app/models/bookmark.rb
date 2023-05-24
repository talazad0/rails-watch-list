class Bookmark < ApplicationRecord
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6 }

  belongs_to :movie
  belongs_to :list
end

# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
