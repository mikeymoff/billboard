class ListsController < ApplicationController
  before_action :set_list, only: [:show, :update, :edit, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def edit
  end

  def create
    @list = List.new(list_params)
    
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  def update
    if @list.update(list_params)
      redirect_to @list
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private
    
    def set_list
      @list = list.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:song_name)
    end
end
