class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)  # backer object
    @backers << backer unless @backers.include?(backer)
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end


end
