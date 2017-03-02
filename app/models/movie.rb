class Movie < ApplicationRecord
  has_many :programs_movies, :through => :programs
end
