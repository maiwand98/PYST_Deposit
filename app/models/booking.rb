class Booking < ApplicationRecord
  belongs_to :time_availability
  belongs_to :bottle
  belongs_to :user
end
