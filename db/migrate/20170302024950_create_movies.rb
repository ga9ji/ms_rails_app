class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.integer :update_status
      t.string :content_tv
      t.string :content_pc
      t.string :content_sp
      t.string :content_tab
      t.string :content_original

      t.timestamps
    end
  end
end
