class CreatePrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :programs do |t|
      t.references :holder
      t.boolean :time_shift_flag
      t.string :name
      t.boolean :public_flag

      t.timestamps
    end
  end
end
