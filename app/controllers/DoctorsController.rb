class DoctorsController < ApplicationController
  def index
    doctors = Doctor.all
    render json: doctors
  end
  
  def show
  end
end