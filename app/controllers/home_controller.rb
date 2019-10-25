class HomeController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create, :destroy]
  
    def index
 
    end

end
