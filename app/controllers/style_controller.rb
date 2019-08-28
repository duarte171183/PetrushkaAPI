class StyleController < ApplicationController
    before_action  :authenticate_user!, :set_style, only:[:show, :edit, :update, :destroy]
    
    def index
        @style = Style.all
        render json: @style, include: ['brand', 'category']
    end

    def create
        @brand = Brand.find(params[:brand_id])
        @style = @brand.styles.new(styles_params)  
            if @style.save 
                render json: @style
            else 
                 render json: @style.errors
            end
    end

    def set_style
        @style = Style.find(params[:id])
    end
    
      def styles_params
        params.require(:style).permit(:code, :price, :brand_id, :category_id)
     end
end
