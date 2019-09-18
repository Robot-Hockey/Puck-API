# app/controllers/authentication_controller.rb

class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request
    
    # POST /login
    def authenticate
        command = AuthenticateUser.call(params[:email], params[:password])
        @user = User.find_by_email(params[:email])
   
        if command.success?
            render json: { auth_token: command.result, user: { company_id: @user.company_id, name: @user.name  }}
        else
            render json: { error: command.errors }, status: :unauthorized
        end
    end
end
