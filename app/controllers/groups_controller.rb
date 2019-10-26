class GroupsController < ApplicationController

    before_action :authenticate_user!

    def new
    end

    def create
        @group = Group.new group_params
        if @group.save
            redirect_to group_path(@group)
        end
    end

    def show
        @group = Group.find(params[:id])
    end

    def edit
    end

    def delete
    end

    private

    def group_params
        params.require(:group).permit(:name)
    end
end
