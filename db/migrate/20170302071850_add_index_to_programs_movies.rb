class AddIndexToProgramsMovies < ActiveRecord::Migration[5.0]
  def change
    add_index :programs_movies, [:program_id, :movie_id], :unique => true
  end
end
