class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(proj_obj)
    @backed_projects << proj_obj
    proj_obj.add_backer(self) unless proj_obj.backers.include?(self)
  end

end