class Backer

  attr_reader :name

  def initialize(name)
    @name= name
    @projects = []
  end

  def back_project(project)

    self.backed_projects << project
    if !project.backers.include?(self)
      project.add_backer(self)
    end
  end

  def backed_projects
    @projects
  end

end
