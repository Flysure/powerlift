class Week < ApplicationRecord
  belongs_to :workout
  has_many :excersize
end
