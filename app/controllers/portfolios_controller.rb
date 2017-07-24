class PortfoliosController < ApplicationController
	def index 
		@protfolio_items = Portfolio.all

	end

	def new 
		@protfolio_item = Portfolio.new
	end 

	def edit
		@protfolio_item = Portfolio.find(params[:id])
	end

	def show
		@protfolio_item = Portfolio.find(params[:id])
	end 

	def destroy
		@protfolio_item = Portfolio.find(params[:id])

		@protfolio_item.destroy
		respond_to do |format|
			format.html {redirect_to portfolios_url  , notice: 'Portfolio item was deleted'}
		end

	end


	def update
		@protfolio_item = Portfolio.find(params[:id])

    
    respond_to do |format|
      if @protfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
        
      else
        format.html { render :edit }

      end
    end
  end


	def create
		@protfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
		respond_to do |format|
      	if @protfolio_items.save
        	format.html { redirect_to portfolios_path, notice: 'Portfolio is now live!' }
        
     	 else
       	 format.html { render :new }
        
     	 end
	end
end

end
