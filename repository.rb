
# frozen_string_literal: true
class Repository
  def initialize
    @tasks = []
    @schedules = []
  end

  def all_tasks
    @tasks
  end

  def all_schedules
    @schedules
  end

  def add_task(task)
    @tasks << task
  end

  def add_schedule(schedule)
    @schedules << schedule
  end

  def remove_task(task_index)
    @tasks.delete_at(task_index)
  end

  def update_task(task_index, options)
    @tasks[task_index] = @tasks[task_index].update(options)
  end

  # def update_schedule
  # end
end
