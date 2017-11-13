class TodoListsController < ApplicationController

  def create
    item = TodoList.create(list_params)
    render json: item
  end

  def index
    @items = TodoList.all
    render json: @items
  end

  private
  def list_params
    params.permit(:item, :completed)
  end
end
