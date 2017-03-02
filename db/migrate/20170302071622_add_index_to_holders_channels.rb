class AddIndexToHoldersChannels < ActiveRecord::Migration[5.0]
  def change
    add_index :holders_channels, [:channel_id, :holder_id], :unique => true
  end
end
