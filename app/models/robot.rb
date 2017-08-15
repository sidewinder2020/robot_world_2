require 'sqlite3'

class Robot
attr_reader :title, :description, :id

  def initialize(task_params)
    @description = task_params["description"]
    @title       = task_params["title"]
    @database = SQLite3::Database.new('db/task_manager_development.db')
    @database.results_as_hash = true
    @id = task_params["id"] if task_params["id"]
  end

  def save
    @database.execute("INSERT INTO robots (title, description) VALUES (?, ?);", @title, @description)
  end

end
