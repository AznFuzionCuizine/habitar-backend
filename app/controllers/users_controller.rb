class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        render json: user
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def user_params
        params.require(:user).permit(:email, :password)
    end

end
