class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  attr_reader :current_user

  before_action :define_current_user


  def define_current_user

    begin
    token = request.headers['Authorization'].split(' ')[1]

    payload = JWT.decode(token, 'latuya')[0]

    @current_user = User.find(payload['id'])
    
    
    if @current_user     #@current_user == to what?????
      return true
    else
      render json: {
          error: true,
          message: 'User does not exist'
      }
    end


    rescue 
      # They are not
      puts "WTF"
      render json: {
          error: true,
          message: 'Invalid Authentication,WTF,La tuya'
      }
    end

  end#end of function


end
