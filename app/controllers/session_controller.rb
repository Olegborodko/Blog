  # -*- coding: utf-8 -*-
class SessionController < ApplicationController

def new

user = User.find_by_email(params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    flash[:error]=false
  else
    flash[:error]=true
  end

  redirect_to controller:'user', action:'index'

end

    def destroy
    session[:user_id] = nil
    redirect_to root_url
	end

end
