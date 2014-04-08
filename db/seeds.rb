# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(id: 1, name: 'den', password: '111111', email: 'den@mail.ru', password_confirmation: '111111' )
Publish.create(id: '1', user_id: '1', title: 'первый пост', body: 'Всем привет, отличная погода не правда ли?')