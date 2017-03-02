class ChangeColumnToPvChannels < ActiveRecord::Migration[5.0]
  def up
    change_column :pv_channels, :pv_count, :integer,  default: 0
  end
  def down
    change_column :pv_channels, :pv_count, :integer
  end
end
