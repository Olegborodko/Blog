	# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
has_secure_password
	validates_presence_of :name, :password, :password_confirmation, :email, message: "не должен быть пустой"
	validates :email, :format => {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "не верный формат" }, :uniqueness => true
	
validates :name, :uniqueness => true, :format => {with: /[a-zA-ZА-Яa-я_1-90]/ }

  validates_length_of :password, :within => 5..99,
    too_long: "слишком длинный",
    too_short: "должен состоять из 5 символов и более"

has_many :publishes
end
