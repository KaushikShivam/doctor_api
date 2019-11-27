require 'rails_helper'

describe DoctorsController do
  describe '#index' do
    it 'should return a success response' do
      get :index
      expect(response).to have_http_status(:ok)
    end
    
    it 'should return proper json' do
      create_list :doctor, 2
      get :index
      json = JSON.parse(response.body)
      json_data = json['data']
      expect(json_data.length).to eq(2)
      
    end
    
  end
end