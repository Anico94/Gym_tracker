class UsersController < ApplicationController
  
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new 
    end

  end

  def show
    if @current_user.weight.present? && @current_user.height.present?
      @bmi = User.bmi_calculator(@current_user.weight, @current_user.height)
      @bmi_cat = User.bmi_category @bmi
    end
  end

  def edit
  end

  def update
    @current_user.update user_params
    redirect_to user_path(@current_user)
  end

  def destroy
    @current_user.destroy
    redirect_to root_path
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :height, :weight) #need to work out if I need to allow height and weight in here
  end
    
end
