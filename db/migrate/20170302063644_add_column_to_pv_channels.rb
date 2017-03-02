class AddColumnToPvChannels < ActiveRecord::Migration[5.0]
  def change
    add_column :pv_channels, :date, :date
  end
end
