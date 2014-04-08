# -*- coding: utf-8 -*-
class Com < ActiveRecord::Base
validates_presence_of :body, :title, message: "не должен быть пустой"

	validates :title, :format => {with: /[a-zA-Z0-9а-я.,А-Я-?()!_]/ , message: "пишите текст и цифры"}, :length => {:maximum => 50}

	validates :body, :length => {:maximum => 500}, :format => {with: /[a-zA-Z0-9а-я.,А-Я-?()!_]/ , message: "пишите текст и цифры"}

	belongs_to :publish
end
