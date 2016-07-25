class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_obj)
    @backers << backer_obj
    backer_obj.back_project(self) unless backer_obj.backed_projects.include?(self)
  end

end