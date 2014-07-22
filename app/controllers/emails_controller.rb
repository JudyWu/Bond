class EmailsController < ApplicationController
	def new 
	end 

	def create 
		@email = Email.new(params[:email])

		@email.save 
		redirect_to @email
	end
    

    def index
       @emails = Email.all   
    end 


    def show 
    	@email = Email.find(params[:id]);
    end 


	private 
	    def email_params 
	   	   params.require(:email).permit(:address, :password)  
	    end 

end
