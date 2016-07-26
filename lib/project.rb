require 'pry'

class Project
  attr_reader :title
  def initialize(string)
    @title = string
    @backers = []
  end

  def add_backer(backer)
    # binding.pry
    # @backers << backer
    # backer.back_project(self)

    self.backers << backer
    if !backer.backed_projects.include?(self)
      backer.back_project(self)
    end
  end

  def backers
    @backers
  end
end
