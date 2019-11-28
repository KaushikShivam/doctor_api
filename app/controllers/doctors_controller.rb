class DoctorsController < ApplicationController
  def index
    render json: serializer.new(Doctor.recent)
  end
  
  def show
    render json: serializer.new(Doctor.find(params[:id]))
  end
  
  private

  def serializer
    DoctorSerializer
  end
end