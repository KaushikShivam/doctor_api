class AppointmentsController < ApplicationController
  include CurrentUserConcern
  def index
    if @current_user
      appointments = @current_user.appointments.joins(:doctor)
      render json: appointments, status: :ok
    else
      render json: doctor, serializer: ActiveModel::Serializer::ErrorSerializer, status: :unprocessable_entity
    end
  end
  
  def create
    if @current_user
      appointment = @current_user.appointments.build(appointment_params)
      if appointment.save
        render json: appointment, status: :ok
      end
    else
      render json: doctor, serializer: ActiveModel::Serializer::ErrorSerializer, status: :unprocessable_entity
    end
  end
  
  private
  def appointment_params
    params.require(:data).require(:attributes)
      .permit(:patient, :reason, :date, :time, :doctor_id) ||
      ActionController::Parameters.new
  end
  
end