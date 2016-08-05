class Project
  attr_accessor :title, :backers

  def initialize(title)
    self.title = title
    self.backers = []
  end

  def add_backer(backer)
    self.backers << backer

    if !backer.backed_projects.include?(self)
      backer.back_project(self)
    end

  end

end
