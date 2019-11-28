class ApplicationController < ActionController::API
  include ::ActionController::Cookies
  skip_before_action :verify_authenticity_token, raise: false
  
  # def render(options={})
  #   options[:json] = serializer.new(options[:json])
  #   super(options)
  # end
end
