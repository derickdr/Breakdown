class ItemsController < ApplicationController

    before_action :authenticate_user!

    def new
    end

    def create
        @item = Item.new item_params
        @item.mark = false
        if @item.save
            redirect_to item_path
        else
            
        end
    end

    def show
        @item = Item.find(params[:id])
    end
    
    def index
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
