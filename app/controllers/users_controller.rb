class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      render json: {
        user: {
          username: @user.username
        }
      }
    else
      render json: {
        user: {},
        success: false
      }
    end
  end

  private

    def user_params
      params.require(:user).permit(:password, :username)
    end
end