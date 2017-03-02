class Holder < ApplicationRecord
  has_many :holders_channels, :through => :channels
  has_many :programs
end
