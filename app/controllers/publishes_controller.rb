	# -*- coding: utf-8 -*-
class PublishesController < ApplicationController
 before_action :publish_set, only: [:edit, :update, :destroy]
 before_action :is_authenticated?
 before_action :has_rights?, only: [:edit, :update, :destroy]

	def new
		redirect_to root_url if !current_user
		@publish=Publish.new
	end

	def create
@publish = Publish.new(publish_params)
@publish.user=current_user

    if @publish.save
      redirect_to root_url
    else
      redirect_to :back , notice: 'ошибка, пустые поля или превышен максимум символов'
	end
    end

    def edit

    end

    def destroy
 
        @publish.destroy
        redirect_to root_url
    end

    def update

        if @publish.update(publish_params)
            redirect_to root_url
        else
            redirect_to :back , notice: 'ошибка, пустые поля или превышен максимум символов'
        end
    end

    def publish_params
    params.require(:publish).permit(:title, :body)
  end

  def publish_set
@publish =Publish.find(params[:id])
  end

  def is_authenticated?
    redirect_to root_path unless current_user
    #render text: 'fak'
  end

  def has_rights?
    redirect_to root_path unless @publish.user_id == current_user.id 
  end

end
