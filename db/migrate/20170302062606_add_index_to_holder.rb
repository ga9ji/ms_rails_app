class AddIndexToHolder < ActiveRecord::Migration[5.0]
  def change
    add_index :holders, :user_name, :unique => true
  end
end
