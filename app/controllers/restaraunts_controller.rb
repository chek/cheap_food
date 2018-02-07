class RestarauntsController < ApplicationController
	def index
		@categories = %w(pizza starbacks chifan)			
	end	
end
