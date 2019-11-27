require 'rails_helper'

describe DoctorsController do
  describe '#index' do
    it 'should return a success response' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end