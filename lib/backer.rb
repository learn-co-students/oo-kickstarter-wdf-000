require 'pry'

class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    # bruh = Project.new(project)
    @backed_projects << project
    project.backers << self
    # @backed_projects << bruh.title
    # bruh.backers = self
    # binding.pry
  end



end