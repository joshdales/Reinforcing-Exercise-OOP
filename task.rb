class Task

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  def description
    @description
  end

  def description=(new_description)
    @description = new_description
  end

  def due_date
    @due_date
  end

  def due_date=(new_due_date)
    @due_date = new_due_date
  end
end

class TodoList
  @@tasks = []
  def initialize(description, due_date)
    new_task = Task.new(description, due_date)
    @@tasks << new_task
    new_task
  end

  def add_task(description, due_date)
    new_task = Task.new(description, due_date)
    @@tasks << new_task
    new_task
  end

  def self.tasks
    @@tasks
  end
end

list =TodoList.new("Buy this!", "Oct")
list.add_task("Buy that!", "Nov")
list.add_task("Buy Everything!", "Dec")
puts TodoList.tasks
