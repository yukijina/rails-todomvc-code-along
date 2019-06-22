class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
  end

  def show
    #I need to load the list
    @list = List.find_by(id: params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.save

    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end


end
