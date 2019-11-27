class DoctorsController < ApplicationController
  def index
    render json: Doctor.recent
  end
  
  def show
    render json: Doctor.find(params[:id])
  end
  
  private

  def serializer
    DoctorSerializer
  end
end