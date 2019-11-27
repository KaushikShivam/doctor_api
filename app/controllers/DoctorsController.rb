class DoctorsController < ApplicationController
  def index
    render json: {
      status: "haha"
    }
  end
end