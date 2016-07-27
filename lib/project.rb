require 'pry'

class Project

	attr_accessor :title, :backers

	def initialize(title)
		@title = title
		@backers = []
	end


	def add_backer(backer_object)
		self.backers << backer_object
			if !backer_object.backed_projects.include?(self)
				backer_object.back_project(self)
			end
	end


end