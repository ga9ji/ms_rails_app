class CreatePvChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :pv_channels do |t|
      t.integer :pv_count
      t.references :channel

      t.timestamps
    end
  end
end
