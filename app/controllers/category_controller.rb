class CategoryController < ApplicationController
    before_action  :authenticate_user!

    def index 
        @category = Category.all
        render json: @category
    end

    def create 
        @category = Category.new(category_parms)
        if @category.save 
            render json: @category
        else 
             render json: @category.errors
        end
    end

    def category_parms
        params.require(:category).permit(:description, :revenue, :commission);
    end
end
