class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :veterinarian
      t.time :time
      t.string :reasons
      t.belongs_to :pet
      t.timestamps
    end
  end
end
