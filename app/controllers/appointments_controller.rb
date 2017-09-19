class AppointmentsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @appointment = Appointment.new
  end

  def create
    pet = Pet.find(params[:pet_id])
    appointment = Appointment.create(appointment_params)
    if appointment.save
      pet.appointments << appointment
        redirect_to pet_path(pet)
  end
end



  private
  def appointment_params
    params.require(:appointment).permit(:veterinarian, :time, :reason)
  end
end
