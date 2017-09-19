class Appointment < ApplicationRecord
  # singler since it belongs to
  belongs_to :pet
end
