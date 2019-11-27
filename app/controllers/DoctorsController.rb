class DoctorsController < ApplicationController
  def index
    render json: {
      status: "haha"
    }
  end
  
  def show
  end
end