# frozen_string_literal: true

require_relative 'view'

class Controller
  def initialize(repo)
    @repo = repo
    @view = View.new
  end

  def create_t
    # view ask arguments
    options = @view.ask_for_task_options
    # pass arguments to Task.new
    task = Task.new(options)
    # repo armazena
    @repo.add_task(task)
    # view mostra task
    index = @repo.all_tasks.index(task)
    @view.display_one(task, index, true)
  end

  def list_t
    # 1. ask repo all tasks
    tasks = @repo.all_tasks
    # 2. ask view to show in a nice way
    @view.display_all(tasks)
  end

  def update_t
    # 1. list_t
    list_t
    # 2. view ask_for_index,
    index = @view.ask_for_task_index
    # 3. repo return_task
    task = @repo.all_tasks[index]
    # 4, view shows in a nice way
    @view.display_one(task, index)
    # 5  view ask parameters
    options = @view.ask_for_task_options
    # 6 call repo.update
    @repo.update_task(index, options)
  end

  def destroy_t
    # lista
    list_t
    # ask_for_index
    index = @view.ask_for_task_index
    # deleta
    removed_task = @repo.remove_task(index)
  end
end
