class Backer
  attr_accessor :backed_projects, :name
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(project)
    self.push_project(project)
    project.push_backer(self)
  end
  def push_project(project)
    @backed_projects << project
  end


end
