	# -*- coding: utf-8 -*-
class UserController < ApplicationController
  def index
@pub=Publish.all
  end


  def new
@user = User.new

  end

  def create
@user = User.new(params.require(:user).permit(:name, :password, :email, :password_confirmation))
@user.email = params[:user][:email].downcase

if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
else
      render action: "new" 
end



#render :inline => @user.password_confirmation
  end

def show
@pub=Publish.where(id: params['id'])
@publish=Publish.find(params[:id])
end

end
