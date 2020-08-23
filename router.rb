# frozen_string_literal: true
class Router

  def initialize(controller)
    @controller = controller
    @running = true
  end

  def display_menu
    puts "Choose an option:"
    puts "1 - List tasks\n2 - Create a task\n3 - Update task\n4 - Delete task"
    puts "9 - Stop"
  end

  def run
    puts "-" * 50
    puts "Welcome to task and schedule manager"
    puts "-" * 50

    while @running
      display_menu
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  def route_action(action)
    case action
    when 1 then @controller.list_t
    when 2 then @controller.create_t
    when 3 then @controller.update_t
    when 4 then @controller.destroy_t
    when 9 then stop!
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def stop!
    @running = false
  end
end
