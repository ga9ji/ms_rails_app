class CreateHolders < ActiveRecord::Migration[5.0]
  def change
    create_table :holders do |t|
      t.string :user_name
      t.string :email
      t.string :password
      t.integer :holder_type

      t.timestamps
    end
  end
end
