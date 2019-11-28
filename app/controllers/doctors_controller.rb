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
      doctor.save
      render json: doctor, status: :created
    else
      render json: doctor, serializer: ActiveModel::Serializer::ErrorSerializer, status: :unprocessable_entity
    end
  end
  
  private

  def doctor_params
    params.require(:data)
    .require(:attributes)
    .permit(:name, :image, :category, :description, :fee, :exp, :likes, :phone, :address) || 
    ActionController::Parameters.new
  end
end