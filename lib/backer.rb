require 'pry'
class Backer
	attr_accessor :backed_projects, :name
	
	def initialize(name)
		@name = name
		@backed_projects = []
	end

	def back_project(project_name)
		Project.new(project_name)
		@backed_projects << project_name
		self.backed_projects.each { |project| project.backers << self }
	end


end