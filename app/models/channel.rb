class Channel < ApplicationRecord
  has_many :page_views
  has_many :schedules
  has_many :pv_channels
  has_many :holders_channels, :through => :holders
end
