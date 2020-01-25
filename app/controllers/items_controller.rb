class ItemsController < ApplicationController
  def index
    @items = Item.all 
  end

  def new
    @items = Item.new 
  end
  def create
    item.create(item_params)
    redirect_to   root_path
  end

  private
  def item_params
    params.require(:item).permit(:title, :nickname, :text, :image )
  end
end
