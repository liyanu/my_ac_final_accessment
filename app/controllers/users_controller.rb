class UsersController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @users = User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @user_note = @user.notes.order("updated_at DESC")
  end

end

