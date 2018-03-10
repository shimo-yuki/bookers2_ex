class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
    @users = User.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
    screen_user(@user)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
    def user_params
       params.require(:user).permit(:name, :introduction, :profile_image)
    end

    def screen_user(user)
      if user != current_user
        redirect_to user_path(current_user)
      end
    end

end
