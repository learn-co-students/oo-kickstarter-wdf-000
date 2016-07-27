require 'pry'

class Backer


	attr_accessor :name, :backed_projects


	def initialize(name)
		@name = name
		@backed_projects =[]
	end

	def back_project(project_object)
		self.backed_projects << project_object
			if !project_object.backers.include?(self)
				# binding.pry
				project_object.add_backer(self)
			end
	end


end