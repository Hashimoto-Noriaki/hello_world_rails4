class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  def index
    binding.pry
    @users = User.all

    # render json: @users
  end

  def show
  end

  def create
  # @user = User.new(
  #     name:params[:name],
  #    account:params[:account],
  #     email:params[:email],
  #   )
    
    @user = User.new(params[:user])
    @user.save!
    render :show
  end


  def update
  @user.update!(user_params)
  render :show
  end


    def destroy 
    @user.destroy!
      render :show
      end

      def user_params
        params.require(:user).permit(:name, :account, :email)
      end
  
      def set_user
        @article = Article.find(params[:id])
      end
end


