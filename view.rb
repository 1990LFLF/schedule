# frozen_string_literal: true

class View
  def ask_for_task_index
    puts "Enter index:"
    gets.chomp.to_i - 1
  end

  def ask_for_task_options
    options = {}
    puts "Enter task name:"
    input = gets.chomp
    options[:name] = input unless input == ""
    puts "Enter task description:"
    input = gets.chomp
    options[:description] = input unless input == ""
    puts "Enter task type:"
    input = gets.chomp
    options[:type] = input unless input == ""
    puts "Enter task date:"
    input = gets.chomp
    options[:date] = input unless input == ""
    puts "Enter task duration:"
    input = gets.chomp
    options[:duration] = input unless input == ""
    options
  end

  def display_all(tasks)
    if tasks.count == 0
      puts 'No tasks yet'
    else
      tasks.each_with_index do |task, index|
        puts "Task #{index + 1}: #{task.options}"
      end
    end
  end

  def display_one(task, index, new = false)
    if new == true
      puts "New Task #{index + 1}: #{task.options}"
    else
      puts "Task #{index + 1}: #{task.options}"
    end
  end
end
