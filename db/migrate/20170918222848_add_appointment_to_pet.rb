class AddAppointmentToPet < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :pets, :appointment, foreign_key: true
  end
end

# DONT DO THIS B/C this creates a foreign_key inside pets which does NOT make sense
