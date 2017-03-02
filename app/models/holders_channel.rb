class HoldersChannel < ApplicationRecord
  belongs_to :channel
  belongs_to :holder
end
