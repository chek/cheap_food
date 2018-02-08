class RestarauntsController < ApplicationController

	RESTARAUNTS = [
		{
			name: 'Pizza Hat',
			address: 'Tianfu Square',
			category: 'pizza'
		},
		{
			name: 'Starbucks',
			address: 'Jinsha Museum',
			category: 'coffee'
		},
		{
			name: 'XiaoXiao',
			address: 'Close to my home',
			category: 'hotpot'
		},
	]


	def index
		food_type = nil
		if params['food_type']
			@restaraunts = RESTARAUNTS.select{ |r|
				r[:category] == params['food_type']
			}
		else
			@restaraunts = RESTARAUNTS
		end
		#@restaraunts = Restaraunts.all

	end	

	def create
		#restaraunt = Restaraunts.new(name: params[:name], address: params[:address])
		#restaraunt.save
		render plain: "Add to DB restaurant '#{params[:name]}' "
	end	

	def show
		#Restaraunts.find(params[:id])
		@restaraunt = RESTARAUNTS[params[:id].to_i]
	end	
end
