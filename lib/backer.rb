class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)  # Project object
    @backed_projects << project unless @backed_projects.include?(project)
    project.add_backer(self) unless project.backers.include?(self)
  end
end
