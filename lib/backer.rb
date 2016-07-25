class Backer
  attr_accessor :name, :backers, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
    @backers = []
  end

  def back_project(project)
    backed_projects << project
    project.backers << self
  end
end