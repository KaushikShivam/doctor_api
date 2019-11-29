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
  end
end