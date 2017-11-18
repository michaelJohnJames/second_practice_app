class UsersController < ApplicationController

  def index
    @users = User.all
  end


  def show
    binding.pry
    @user = User.find_by_id(:user_id)

    @user.save
    session[:user_id] = @user.id

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.save
    session[:user_id] = @user.id
    redirect_to '/show'

    end



end
