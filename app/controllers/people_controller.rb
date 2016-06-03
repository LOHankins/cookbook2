class PeopleController < ApplicationController
	def index
		@people = Person.all
	end

	def new
		@person = Person.new
	end


# create
	def create
		@person = Person.new(person_params)

		if @person.save
			redirect_to @person, notice: " successfully created"
		else
			render :new
		end
	end

	def show
		@person = Person.find(params[:id])
	end

	def edit
		@person = Person.find(params[:id])
	end

	def update
		@person = Person.find(params[:id])

		if @person.update(person_params)
			redirect_to @person, notice: " successfully updated"
		else
			render :new
		end
	end

	# destroy
	def destroy
	  @person = Person.find(params[:id])
	  @person.destroy

	  redirect_to "/people"
	end

	private 
  	def person_params
    	params.require(:person).permit(:fname, :mname, :lname, :email, :user_id)
  	end
end
