class EmailsController < ApplicationController
	
	def new 
		@email = Email.new
	end 

	def create 
		@email = Email.new(email_params)
		if @email.save 
			redirect_to @email
		else 
			render 'new'
	    end 
	end

	def show 
		@email = Email.find(params[:id])
	end 

	def index
	   @emails = Email.all   
	end 


	private 
	    def email_params 
	   	   params.require(:email).permit(:address, :password)  
	    end 

end
