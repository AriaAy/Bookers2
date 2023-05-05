class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    user.save
    flash[:notice] =　"Welcome! You have signed up successfully."
    redirect_to user_path(user.id)
  end

  def index
    @users = User.all
    @books = Book.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
    # @book = @user.post_image
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      # flash[:success] = "Book was successfully updated."
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
