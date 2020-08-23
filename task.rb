class Task
  attr_acessor :name, :description, :details

  def initialize(name, description, details = {date: nil, duration: nil, type: nil, priority: nil})
  @name = name
  @description = description
  @details = details
  @status = "to do"
  end

  def status
    @status
  end

  def mark_as_done!
    @status = "done"
  end

  def mark_as_doing!
    @status = "doing"

end
