class Backer
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end
  
  def backed_projects
    project_backer = ProjectBacker.all.select {|pb| pb.backer == self}
    project_backer.map {|pb| pb.project}
  end

end