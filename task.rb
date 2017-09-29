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

end
