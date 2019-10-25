class ItemsController < ApplicationController

    def new
    end

    def create
        @item = Item.new item_params
    end

    def show
        @item = Item.find(params[:id])
    end
    
    def index
        @item = Item.find(params[:id])
    end

    def edit
    end

    def delete
    end

    private

    def item_params
        params.require(:item).permit(:name, :brand, :sex, :size, :pictures, :acquisition_value, :disposal_value, :notes)

end
