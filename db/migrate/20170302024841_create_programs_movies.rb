class CreateProgramsMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :programs_movies do |t|
      t.references :program
      t.references :movie

      t.timestamps
    end
  end
end
