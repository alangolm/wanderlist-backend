class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      if params[:username] == ''
        render json: { errors: "Username field must not be blank" }
      else
        render json: { errors: "Username already exists" }
      end
    end
  end

  # def create
  #   @user = User.create(user_params)
  #   if @user.valid?
  #     render json: { user: UserSerializer.new(@user) }, status: :created
  #   else
  #     render json: { error: 'failed to create user' }, status: :not_acceptable
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
