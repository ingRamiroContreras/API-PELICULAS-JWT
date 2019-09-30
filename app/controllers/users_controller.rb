class UsersController < ApplicationController
    before_action only: [:show, :update, :destroy]
    skip_before_action :authenticate_request
     # GET /movies
    def index
        @users = User.all
        json_response(@users)
    end

    # POST /movies
    def create
        @user = User.create!(user_params)
        json_response(@user, :created)
    end

    # GET /movies/:id
    def show
        json_response(@user)
    end
    
    # PUT /movies/:id
    def update
        @user.update(movie_params)
        head :no_content
    end

    # DELETE /movies/:id
    def destroy
        @user.destroy
        head :no_content
    end
    
    private
    def user_params
      # whitelist params
      params.permit(:name, :email, :password, :password_confirmation, :user)
    end
  
    def set_user
      @user = User.find(params[:id]) 
    end
end
