class TodoItem < ActiveRecord::Base
  attr_accessible :body, :completion, :todo_list_id

  belongs_to :todo_list
end
