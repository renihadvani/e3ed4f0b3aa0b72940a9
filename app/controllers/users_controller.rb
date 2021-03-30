class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1 or /users/1.json
  def show
    render json: @user
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    render json: {}
  end

  def typehead 
    @users = User.where(firstName: /^#{params[:search]}/i).or(lastName: /^#{params[:search]}/i).or(email: /^#{params[:search]}/i)
    render json: @users
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:firstName, :lastName, :email)
    end
end
