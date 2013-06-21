class TodoListsController < ApplicationController
  def index
    @todos = TodoList.includes(:todo_items)
    @list = TodoList.new
  end

  def create
    @list = TodoList.new(params[:todo_list])
    @list.save

    respond_to do |format|
      format.json { render :json => @list }
    end
  end
end
