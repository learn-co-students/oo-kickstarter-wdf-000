require 'pry'
class Project

	attr_accessor :backers, :title
	
	def initialize(title)
		@title = title
		@backers = []
	end
	def add_backer(backer)
		Backer.new(backer)
		@backers << backer	
		self.backers.each { |backr| backr.backed_projects << self }
	end
	 

end