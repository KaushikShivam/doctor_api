class DoctorsController < ApplicationController
  def index
    render json: Doctor.recent
  end
  
  def show
  end
  
  private

  def serializer
    DoctorSerializer
  end
end