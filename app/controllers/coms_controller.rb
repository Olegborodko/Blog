# -*- coding: utf-8 -*-
class ComsController < ApplicationController

	def create 
	@comments = Com.new(params.require(:com).permit(:title, :body))
	@comments.publish=Publish.find(params[:id])

	if current_user
	 @comments.user_name=current_user.name
	else
	 @comments.user_name='visitor'
	end

		if @comments.save
        redirect_to :back
    	else
        redirect_to :back , notice: 'ошибка, пустые поля или превышен максимум символов'
		end

	end

end
