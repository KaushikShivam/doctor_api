require 'rails_helper'

describe DoctorsController do
  subject {get :index}
  describe '#index' do
    it 'should return a success response' do
      subject
      expect(response).to have_http_status(:ok)
    end
    
    it 'should return proper json' do
      doctors = create_list :doctor, 2
      subject
      doctors.each_with_index do |doctor, index|
        expect(json_data[index]['attributes']).to eq({
          'name' => doctor.name,
          'category' => doctor.category,
          'description' => doctor.description,
          'fee' => doctor.fee,
          'exp' => doctor.exp,
          'likes' => doctor.likes,
          'phone' => doctor.phone,
          'address' => doctor.address
        })
      end
    end
    
  end
end