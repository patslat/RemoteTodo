class TodoItemsController < ApplicationController
  def create
    @todo_list = TodoList.find(params[:todo_list_id])
    @todo_item = @todo_list.todo_items.build(params[:todo_item])
    @todo_item.save

    respond_to do |format|
      format.json { render :json => @todo_item }
    end
  end

end
