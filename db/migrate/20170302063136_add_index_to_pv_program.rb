class AddIndexToPvProgram < ActiveRecord::Migration[5.0]
  def change
   add_index :pv_programs, [:date, :schedule_id]
  end
end
