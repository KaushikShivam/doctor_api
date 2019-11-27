class DoctorsController < ApplicationController
  def index
    render json: Doctor.all
  end
  
  def show
  end
  
  private

  def serializer
    DoctorSerializer
  end
end