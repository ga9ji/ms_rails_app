class Schedule < ApplicationRecord
  belongs_to :channel
  belongs_to :program
  has_many :pv_programs
  has_many :page_views
end
