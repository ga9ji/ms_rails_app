class Program < ApplicationRecord
  has_many :page_views
  has_many :schedules
  has_many :programs_movies, :through => :movies
  belongs_to :holder
end
