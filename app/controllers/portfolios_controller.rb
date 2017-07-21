class PortfoliosController < ApplicationController
	def index 
		@protfolio_items = Portfolio.all

	end
end
