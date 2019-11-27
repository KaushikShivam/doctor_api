require 'rails_helper'

describe 'doctors router' do
  # it "should route to doctors index" do
  #   expect(get '/doctors').to route_to('doctors#index')
  # end
  # commented this to use named path. Keeping it here for ref
  it "should route to doctors index" do
    expect(get doctors_path).to route_to('doctors#index')
  end
end