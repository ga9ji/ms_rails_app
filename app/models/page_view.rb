class PageView < ApplicationRecord
  belongs_to :user
  belongs_to :channel
  belongs_to :program
  belongs_to :schedule
end
