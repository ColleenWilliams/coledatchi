class TimeDecay < ApplicationRecord
  belongs_to :pet
  has_many :events
end