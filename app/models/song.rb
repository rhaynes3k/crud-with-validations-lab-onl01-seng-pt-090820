class Song < ApplicationRecord
  validates :title, uniqueness: {
    scope: %i[release_year artist_name]}

  validates :artist_name, presence:true
  validates :release_year,  presence:true, if: :released?


end
