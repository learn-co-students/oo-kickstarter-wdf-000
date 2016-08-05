class Backer
  attr_accessor :name, :backed_projects, :backers

  def initialize(name)
    self.name = name
    self.backed_projects = []
    self.backers = []
  end

  def back_project(project)
    self.backed_projects << project

    if !project.backers.include?(self)
      project.add_backer(self)
    end

  end

end
