class ItemsController < ApplicationController
  def index
    @items = Item.all 
  end

  def new
    @items = Item.new 
  end


  private
  def item_params
    params.require(:item).permit(:text )
  end
end
