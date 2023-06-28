class ApplicationController < ActionController::API
  before_action :authenticated?
  
  def authenticated?
    render status: 401, json:{error: 'Unauthorized'} if request.headers[:Authorization] != 'Barer abcdefg123456'
  end
end
