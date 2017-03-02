class AddIndexToChannel < ActiveRecord::Migration[5.0]
  def change
    add_index :channels, :channel_name, :unique => true
  end
end
