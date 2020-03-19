class SessionsController < ApplicationController
#    only: [:new, :create, :welcome]
# skip_before_action :authorized

   def welcome
    @articles = Article.all
   end
   
   def index
      @articles = Article.all
   end

  def new
  end


  def create
     @user = User.find_by(username: params[:username])
     if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
     else
        redirect_to '/login'
     end
  end

  def page_requires_login
  end

end