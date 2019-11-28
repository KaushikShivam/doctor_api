class DoctorsController < ApplicationController
  def index
    render json: Doctor.recent
  end
  
  def show
    render json: Doctor.find(params[:id])
  end
  
  def create
    doctor = Doctor.new(doctor_params)
    if doctor.valid?
    else
      render json: doctor, serializer: ActiveModel::Serializer::ErrorSerializer, status: :unprocessable_entity
    end
  end
  
  private

  def doctor_params
    ActionController::Parameters.new
  end
end