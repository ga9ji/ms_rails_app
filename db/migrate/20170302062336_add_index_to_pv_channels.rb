class AddIndexToPvChannels < ActiveRecord::Migration[5.0]
  def change
    add_index :pv_channels, [:date, :channel_id]
  end
end
