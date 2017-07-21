class PortfoliosController < ApplicationController
	def index 
		@protfolio_items = Portfolio.all

	end

	def new 
		@protfolio_item = Portfolio.new
	end 

	def edit
	end

	def create
		@protfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
		respond_to do |format|
      	if @protfolio_items.save
        	format.html { redirect_to @protfolios_path, notice: 'Portfolio is now live!' }
        
     	 else
       	 format.html { render :new }
        
     	 end
	end
end

end
