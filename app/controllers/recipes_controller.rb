class RecipesController < ApplicationController
	def index
		@recipes = Recipe.all
	end

	def new
		@recipe = Recipe.new
	end


# create
	def create
		@recipe = Recipe.new(recipe_params)

		if @recipe.save
			redirect_to @recipe, notice: " successfully created"
		else
			render :new
		end
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	private 
  	def recipe_params
    	params.require(:recipe).permit(:name, :prep, :cook, :description, :instruction, :person_id)
  	end
end
