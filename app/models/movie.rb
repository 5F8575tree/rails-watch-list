class Movie < ApplicationRecord
  # You can’t delete a movie if it is referenced in at least one bookmark?
  has_many :bookmarks

  validates :title, presence: true
  validates :overview, presence: true
end
