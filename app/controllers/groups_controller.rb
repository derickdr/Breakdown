class GroupsController < ApplicationController

    def new
    end

    def create
        @group = Group.new group_params
    end

    def show
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
