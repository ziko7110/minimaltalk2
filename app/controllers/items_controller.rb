class ItemsController < ApplicationController
  def index
    @items = Item.all 
  end

  def about
  end

  def new
    @item = Item.new 
  end

  def create
    Item.create(item_params)
    redirect_to   root_path
  end
  def show
    @item = Item.find(params[:id])
    @comment = Comment.new
    @comments = @item.comments
  end

  def edit
    @item = Item.find(params[:id])
  end
  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to item_path(item.id)
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end

  def search
    @items = Item.search(params[:keyword])
  end
  
  private
  def item_params
    params.require(:item).permit(:title, :nickname, :text, :image )
  end
end
