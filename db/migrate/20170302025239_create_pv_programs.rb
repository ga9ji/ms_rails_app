class CreatePvPrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :pv_programs do |t|
      t.date :date
      t.references :schedule
      t.integer :pv_count

      t.timestamps
    end
  end
end
