class AppointmentsController < ApplicationController
  def index
    @appointment = Appointment.new
    @appointments = Appointment.order('appt_time ASC')
  end

  def create
    @appointment - Appointment.create(appointment_params)
    redirect_to :root
  end

  private
  def appointment_params
    params.require(:appointment).permit(:title, :appt_time)
  end
end
