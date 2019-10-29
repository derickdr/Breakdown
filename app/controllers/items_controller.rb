class ItemsController < ApplicationController

    before_action :authenticate_user!

    def new
        @item = Item.new
    end

    def create
        @item = Item.new item_params
        if @item.save
            redirect_to @item
        else
            render :new
        end
    end

    def show
        @item = Item.find(params[:id])
    end
    
    def index
        @items = Item.order(created_at: :DESC)
    end

    def edit
    end

    def delete
    end

    private

    def item_params
        params.require(:item).permit(:name, :brand, :sex, :size, :pictures, :acquisition_value, :disposal_value, :notes, :mark)
    end

end
