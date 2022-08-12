class List < ApplicationRecord
  # When you delete a list, you should delete all associated bookmarks - but not the movies
  # dependent destroy GIVES YOU PERMISSION to destroy the association!!!
  has_many :bookmarks, dependent: :destroy # destroy bookmarks
  has_many :movies, through: :bookmarks # don't destroy the movies

  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end
