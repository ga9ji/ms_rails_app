class CreatePageViews < ActiveRecord::Migration[5.0]
  def change
    create_table :page_views do |t|
      t.references :program
      t.references :channel
      t.references :user
      t.references :schedule

      t.timestamps
    end
  end
end
