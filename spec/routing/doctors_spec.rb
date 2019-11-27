require 'rails_helper'

describe 'doctors router' do
  it "should route to doctors index" do
    expect(get '/doctors').to route_to('doctors#index')
  end

  it 'should route to the show action' do
    expect(get doctor_path(2)).to route_to('doctors#show', id: '2')
  end
  
end