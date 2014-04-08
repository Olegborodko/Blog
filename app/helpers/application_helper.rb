module ApplicationHelper
	def russian_data(data)
Russian::strftime(data, "%e %B %G, %R")
	end
end
