class CreateHoldersChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :holders_channels do |t|
      t.references :channel
      t.references :holder

      t.timestamps
    end
  end
end
