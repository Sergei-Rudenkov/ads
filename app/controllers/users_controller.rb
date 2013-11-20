class UsersController < ApplicationController
 before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
 before_filter :correct_user, only:  [:edit, :update]
 before_filter :admin_user,     only: [:destroy]
  def index
    @users = User.paginate(page: params[:page])
  end
  def new
	@user = User.new
  end
    def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
  def show
   @user = User.find(params[:id])
  end
   def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
         sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
   def destroy
    User.find(params[:id]).destroy
    redirect_to users_url
  end
  
   private

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
    def correct_user
      @user = User.find(params[:id])  
      redirect_to(root_path) unless current_user?(@user) || current_user.admin?
    end
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
