require 'pry'
class Backer

  attr_accessor :name, :backed_projects

  # def backed_projects
  #   @backed_projects.sort_by { }
  # end


  def initialize(name)
    @name = name
    @backed_projects = []
  end

 def back_project(project)
   @backed_projects << project
  #  if project.backers.detect{|backer| backer == self.name}
    #  binding.pry
  #  else
      if project.backers.find{|backer| backer.name == self.name}

      else
         project.add_backer(self)
      end
  # end
 end



end
