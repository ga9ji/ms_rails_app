class ChangeColumnToPvChannels < ActiveRecord::Migration[5.0]
  def change
    change_column :pv_channels, :pv_count, :integer, default: 0
  end
end
