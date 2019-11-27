require 'rails_helper'

describe 'doctors router' do
  it "should route to doctors index" do
    expect(get doctors_path).to route_to('doctors#index')
  end
  
  it "should route to doctors index" do
    expect(get '/doctors').to route_to('doctors#index')
  end
end