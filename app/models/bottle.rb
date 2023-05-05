class Bottle < ApplicationRecord
  belongs_to :user
  has_many :time_availability
end
